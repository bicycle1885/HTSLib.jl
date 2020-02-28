# Import the low-level interface module.
using HTSLib: htslib

"""
    iterateregion(filepath::AbstractString, region::AbstractString)

Iterete over all records in the query `region` that are stored in `filepath`
using the low-level interface.
"""
function iterateregion(filepath::AbstractString, region::AbstractString)
    # Open the file.
    file = htslib.hts_open(filepath, "r")
    @assert file != C_NULL

    # Read the header.
    header = htslib.sam_hdr_read(file)
    @assert header != C_NULL

    # Load the index file.
    index_format = htslib.HTS_FMT_BAI
    index = htslib.hts_idx_load(filepath, index_format)
    @assert index != C_NULL

    # Create an iterator.
    iterator = htslib.sam_itr_querys(index, header, region)
    @assert iterator != C_NULL

    # Allocate a placeholder for records.
    record = htslib.bam_init1()
    @assert record != C_NULL

    # Iterate over a specified region.
    n = 0
    res::Cint = 0
    while res ≥ 0
        res = htslib.sam_itr_next(file, iterator, record)
        @assert res ≥ -1
        res ≥ 0 && (n += 1)
    end
    println("# records: $(n)")

    # Destroy the allocated objects.
    htslib.bam_destroy1(record)
    htslib.hts_idx_destroy(index)
    htslib.sam_hdr_destroy(header)

    # Close the file.
    res = htslib.hts_close(file)
    @assert res == 0
end

# Script's entry point.
if PROGRAM_FILE == relpath(@__FILE__)
    @assert length(ARGS) == 2
    filepath, region = ARGS
    iterateregion(filepath, region)
end
