module HTSLib

using Printf: @printf

include("htslib/htslib.jl")

"""
The version of htslib.
"""
const HTSLIB_VERSION = VersionNumber(unsafe_string(htslib.hts_version()))


# Record view
# -----------

"""
A light-weight wrapper of records.
"""
struct RecordView{T}
    ptr::Ptr{T}  # pointer to a htslib-allocated record struct
end

function Base.show(io::IO, view::RecordView{htslib.bam1_t})
    bam = unsafe_load(view.ptr)
    @printf(io, "%s(<%d:%d@%p>)", summary(view), bam.core.tid, bam.core.pos, view.ptr)
end


# Iterator
# --------

mutable struct RecordIterator
    file::Ptr{htslib.htsFile}
    header::Ptr{htslib.sam_hdr_t}
    index::Ptr{htslib.hts_idx_t}
    iterator::Ptr{htslib.hts_itr_t}
    record::Ptr{htslib.bam1_t}

    function RecordIterator(file, header, index, iterator, record)
        iter = new(file, header, index, iterator, record)
        finalizer(iter) do iter
            if iter.record != C_NULL
                htslib.bam_destroy1(iter.record)
                iter.record = C_NULL
            end
            if iter.iterator != C_NULL
                htslib.hts_itr_destroy(iter.iterator)
                iter.iterator = C_NULL
            end
            if iter.index != C_NULL
                htslib.hts_idx_destroy(iter.index)
                iter.index = C_NULL
            end
            if iter.header != C_NULL
                htslib.sam_hdr_destroy(iter.header)
                iter.header = C_NULL
            end
            if iter.file != C_NULL
                res = htslib.hts_close(iter.file)
                @assert res == 0
                iter.file = C_NULL
            end
        end
        return iter
    end
end

function eachrecord(filepath::AbstractString, region::AbstractString)
    # TODO: more careful memory management
    file = htslib.hts_open(filepath, "r")
    file == C_NULL && error("failed to open $(filepath)")
    header = htslib.sam_hdr_read(file)
    header == C_NULL && error("failed to read the header of $(filepath)")
    index_format = htslib.HTS_FMT_BAI
    index = htslib.hts_idx_load(filepath, index_format)
    index == C_NULL && error("failed to load the index file for $(filepath)")
    iterator = htslib.sam_itr_querys(index, header, region)
    iterator == C_NULL && error("failed to parse the region query string: $(repr(region))")
    record = htslib.bam_init1()
    record == C_NULL && error("failed to allocate a new record")
    return RecordIterator(file, header, index, iterator, record)
end

function Base.iterate(iter::RecordIterator, ::Nothing = nothing)
    res = htslib.sam_itr_next(iter.file, iter.iterator, iter.record)
    @assert res ≥ -1
    if res ≥ 0
        return RecordView(iter.record), nothing
    else
        finalize(iter)  # early finalization
        return nothing
    end
end

end # module
