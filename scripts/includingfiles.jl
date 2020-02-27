function includefiles(header, canonicalnames)
    filenames = String[]
    for line in eachline(header)
        if startswith(line, "#include ")
            findfirst('<', line) === nothing || continue
            ql = findnext('"', line, 1)
            qr = findnext('"', line, ql+1)
            name = line[ql+1:qr-1]
            i = findfirst(x -> endswith(x, name), canonicalnames)
            @assert i !== nothing
            push!(filenames, canonicalnames[i])
        end
    end
    return filenames
end

canonicalnames = [name[3:end] for name in readlines(`find . -name '*.h'`)]
nexported = [parse(Int, chomp(read(pipeline(header, `grep -v '#define'`, `bash -c 'grep -c HTSLIB_EXPORT || true'`), String))) for header in canonicalnames]
println("digraph {")
for (header, n) in zip(canonicalnames, nexported)
    n > 0 && println("""    "$(header)" [xlabel="$(n)"]""")
    for file in includefiles(header, canonicalnames)
        header == file && continue
        println("""    "$(header)" -> "$(file)";""")
    end
end
println("}")
