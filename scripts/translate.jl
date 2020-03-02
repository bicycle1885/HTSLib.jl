srcdir = "src/htslib/"
rootdir = "htslib-1.10.2/"
headerfiles = [
    "htslib/bgzf.h",
    "htslib/knetfile.h",
    "htslib/kstring.h",
    "htslib/kfunc.h",
    "htslib/hfile.h",
    "htslib/hts_os.h",
    "htslib/hts_log.h",
    "htslib/faidx.h",
    "htslib/hts.h",
    "htslib/tbx.h",
    "htslib/regidx.h",
    "htslib/sam.h",
    "htslib/cram.h",
]
for headerfile in headerfiles
    headerfile = relpath(normpath(joinpath(rootdir, headerfile)))
    @assert startswith(headerfile, rootdir)
    translatedfile = joinpath(srcdir, string(splitext(headerfile)[1][lastindex(rootdir)+1:end], ".jl"))
    println(headerfile, " => ", translatedfile)
    run(pipeline(headerfile, `julia scripts/translate_exported_functions.jl`, translatedfile))
end
