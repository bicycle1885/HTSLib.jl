# Import the low-level interface module.
using HTSLib: htslib

"""
    iterateall(filepath::AbstractString)

Iterate over all records stored in `filepath` using the low-level interface.
"""
function iterateall(filepath::AbstractString)
    # Open the file.
    file = htslib.hts_open(filepath, "r")
    @assert file != C_NULL

    # Read the header.
    header = htslib.sam_hdr_read(file)
    @assert header != C_NULL

    # Allocate a placeholder for records.
    record = htslib.bam_init1()
    @assert record != C_NULL

    # Iterate over all records.
    n = 0
    res::Cint = 0
    while res ≥ 0
        res = htslib.sam_read1(file, header, record)
        @assert res ≥ -1
        res ≥ 0 && (n += 1)
    end
    println("# records: $(n)")

    # Destroy the allocated objects.
    htslib.bam_destroy1(record)
    htslib.sam_hdr_destroy(header)

    # Close the file.
    res = htslib.hts_close(file)
    @assert res == 0
end

# Script's entry point.
if PROGRAM_FILE == relpath(@__FILE__)
    @assert length(ARGS) == 1
    filepath = ARGS[1]
    iterateall(filepath)
end
