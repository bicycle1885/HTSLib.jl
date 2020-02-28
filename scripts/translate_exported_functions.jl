function translate_exported_functions(code)
    println("# NOTE: This file contains machine-generated code by $(basename(@__FILE__)).\n")
    e = 0
    while (s = findnext("HTSLIB_EXPORT", code, e + 1)) !== nothing
        e = findnext(';', code, last(s) + 1)
        @assert !isnothing(e)
        decl = code[last(s)+1:e]
        println("# ", lstrip(replace(decl, r"\s+" => ' ')))
        try
            buf = IOBuffer()
            (rettype, funcname), next = translate_type_and_name(decl, 1, argument = false)
            print(buf, "@defun $(funcname)(")
            @assert !isnothing(next)
            @assert next[1][1] == :lparen
            arguments = String[]
            unnamed = 0
            while !isnothing(next) && next[1][1] != :rparen
                (argtype, argname), next = translate_type_and_name(decl, next[2][1], argument = true)
                if argname ∈ ("end",)
                    argname = string(argname, '_')
                end
                if isempty(argname)
                    unnamed += 1
                end
                push!(arguments, "$(argname)::$(argtype)")
            end
            if length(arguments) == 1 && arguments[1] == "::Cvoid"
                unnamed = 0
                empty!(arguments)
            end
            if unnamed > 0
                error("found unnamed argument(s)")
            end
            print(buf, join(arguments, ", "))
            println(buf, ")::$(rettype)")
            println(String(take!(buf)))
        catch ex
            println("# ", ex)
            println()
        end
    end
end

function translate_type_and_name(code, i; argument)
    token, i = nexttoken(code, i)
    isconst = false
    if token == (:keyword, "const")
        isconst = true
        token, i = nexttoken(code, i)
    end
    if token == (:keyword, "struct") || token == (:keyword, "enum")
        token, i = nexttoken(code, i)
    end
    if token == (:keyword, "signed") || token == (:keyword, "unsigned") || token == (:keyword, "long")
        next = nexttoken(code, i)
        if next[1][1] == :keyword
            typename = "$(token[2]) $(next[1][2])"
            token, i = next
        else
            typename = token[2]
        end
    else
        typename = token[2]
    end
    token, i = nexttoken(code, i)
    if isconst && typename == "char" && token[1] == :asterisk
        type = "Cstring"
        token, i = nexttoken(code, i)
    else
        type = typemap(typename)
    end
    while token[1] == :asterisk
        #type = argument ? "Ref{$(type)}" : "Ptr{$(type)}"
        type = "Ptr{$(type)}"
        token, i = nexttoken(code, i)
    end
    if argument && token[1] == :lparen
        error("function pointer?")
    elseif argument && token[1] != :ident
        return (type, ""), (token, i)
    else
        name = token[2]
        #return (type, token[2]), nexttoken(code, i)
        token, i = nexttoken(code, i)
        if token[1] == :lbracket
            token, i = nexttoken(code, i)
            if token[1] == :integer
                token, i = nexttoken(code, i)
            end
            #type = argument ? "Ref{$(type)}" : "Ptr{$(type)}"
            type = "Ptr{$(type)}"
            return (type, name), nexttoken(code, i)
        else
            return (type, name), (token, i)
        end
    end
end

const TYPEMAP = Dict(
    "void" => "Cvoid",
    "char" => "Cchar",
    "unsigned char" => "Cuchar",
    "short" => "Cshort",
    "unsigned short" => "Cushort",
    "int" => "Cint",
    "unsigned int" => "Cuint",
    "long" => "Clong",
    "unsigned long" => "Culong",
    "long long" => "Clonglong",
    "unsigned long long" => "Culonglong",
    "size_t" => "Csize_t",
    "ssize_t" => "Cssize_t",
    "off_t" => "Coff_t",  # not defined in the standard library
    "float" => "Cfloat",
    "double" => "Cdouble",
)
for n in [8, 16, 32, 64]
    TYPEMAP["int$(n)_t"] = "Int$(n)"
    TYPEMAP["uint$(n)_t"] = "UInt$(n)"
end
typemap(ctype) = get(TYPEMAP, ctype, ctype)

isfirst(c) = 'A' ≤ c ≤ 'Z' || 'a' ≤ c ≤ 'z' || c == '_'
iscont(c) = isfirst(c) || '0' ≤ c ≤ '9'

iskeyword(word) = word ∈ ("void", "char", "short", "int", "long", "float", "double", "struct", "enum", "union", "signed", "unsigned", "const")

function nexttoken(code, i = 1)
    # skip whitespace
    next = iterate(code, i)
    while !isnothing(next) && isspace(next[1])
        next = iterate(code, next[2])
    end
    isnothing(next) && return

    c, i = next
    if c == '*'
        return (:asterisk, "*"), i
    elseif c == ','
        return (:comma, ","), i
    elseif c == '('
        return (:lparen, "("), i
    elseif c == ')'
        return (:rparen, ")"), i
    elseif c == '['
        return (:lbracket, "["), i
    elseif c == ']'
        return (:rbracket, "]"), i
    elseif c == ';'
        return (:semicolon, ";"), i
    elseif isdigit(c)
        s = prevind(code, i)
        next = iterate(code, i)
        while !isnothing(next) && isdigit(next[1])
            i = next[2]
            next = iterate(code, i)
        end
        int = code[s:prevind(code, i)]
        return (:integer, int), i
    elseif isfirst(c)
        s = prevind(code, i)
        next = iterate(code, i)
        while !isnothing(next) && iscont(next[1])
            i = next[2]
            next = iterate(code, i)
        end
        word = code[s:prevind(code, i)]
        return (iskeyword(word) ? :keyword : :ident, word), i
    else
        error("unknown token: $(repr(c))")
    end
end

translate_exported_functions(read(stdin, String))
