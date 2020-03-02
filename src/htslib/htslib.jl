"""
Low-level binding to htslib.
"""
module htslib

using htslib_jll: libhts

include("types.jl")
include("constants.jl")
include("functions.jl")

# A macro that makes function binding definitions concise.
# For example, @defun foo(x::S, y::T)::U is expanded to:
#   foo(x, y) = ccall((:foo, libhts), U, (S, T), x, y)
macro defun(ex::Expr)
    @assert ex.head === :(::)
    call = ex.args[1]
    rettype = ex.args[2]
    eval(rettype)  # check that the type is defined
    funcname = call.args[1]
    argnames = []
    argtypes = []
    for i in 2:lastindex(call.args)
        arg = call.args[i]
        @assert arg.head === :(::)
        @assert arg.args[1] isa Symbol
        argname, argtype = arg.args
        push!(argnames, argname)
        push!(argtypes, argtype)
        eval(argtype)  # check that the type is defined
    end
    Expr(:(=),
         Expr(:call, funcname, argnames...),
         Expr(:call,
              :ccall,
              Expr(:tuple, QuoteNode(funcname), :libhts),
              rettype,
              Expr(:tuple, argtypes...),
              argnames...))
end

# The following files are machine-generated.  Do not edit them by hand.
include("htslib/bgzf.jl")
include("htslib/knetfile.jl")
include("htslib/kfunc.jl")
include("htslib/hfile.jl")
include("htslib/hts_os.jl")
include("htslib/hts_log.jl")
include("htslib/hts.jl")
include("htslib/faidx.jl")
include("htslib/tbx.jl")
include("htslib/regidx.jl")
include("htslib/sam.jl")

end
