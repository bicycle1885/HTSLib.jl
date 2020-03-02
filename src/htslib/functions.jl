# Functions
# =========
#
# Function definitions that are derived from C macros or static inline
# functions.  These are considered as part of htslib's public API but not
# exported from the dynamic library.
#

# utility function
_bitfield(ptr::Ptr, offset::Int) = (unsafe_load(ptr) >> offset) & 1 != 0

# Defined in sam.h
# ----------------

bam_cigar_op(c)     = c & BAM_CIGAR_MASK
bam_cigar_oplen(c)  = c >> BAM_CIGAR_SHIFT
bam_cigar_opchar(c) = _BAM_CIGAR_STA_PADDED[bam_cigar_op(c)+1]
bam_cigar_gen(l, o) = l<<BAM_CIGAR_SHIFT | o
bam_cigar_type(o)   = BAM_CIGAR_TYPE>>(o<<1) & 0x3

bam_is_rev(b::bam1_t)    = (b.core.flag & BAM_FREVERSE) != 0
bam_is_mrev(b::bam1_t)   = (b.core.flag & BAM_FMREVERSE) != 0
bam_get_qname(b::bam1_t) = Cstring(b.data)
bam_get_cigar(b::bam1_t) = Ptr{UInt32}(b.data + b.core.l_qname)
bam_get_seq(b::bam1_t)   = b.data + (b.core.n_cigar<<2) + b.core.l_qname
bam_get_qual(b::bam1_t)  = b.data + (b.core.n_cigar<<2) + b.core.l_qname + (b.core.l_qseq+1)>>1
bam_get_aux(b::bam1_t)   = b.data + (b.core.n_cigar<<2) + b.core.l_qname + (b.core.l_qseq+1)>>1 + b.core.l_qseq
bam_get_l_aux(b::bam1_t) = b.data - (b.core.n_cigar<<2) - b.core.l_qname - b.core.l_qseq - (b.core.l_qseq+1)>>1

bam_seqi(s::Ptr{UInt8}, i::Integer) = unsafe_load(s, i>>1 + 1) >> ((~i&1)<<2) & 0xf

function bam_set_mempolicy(b::Ptr{bam1_t}, policy::Integer)
    dst = Ptr{UInt8}(b) + fieldoffset(bam1_t, 6)
    unsafe_store!(Ptr{UInt32}(dst), convert(UInt32, policy))
    return
end
bam_get_mempolicy(b::bam1_t) = b.mempolicy

# Derive methods for pointer argument.
for func in [:bam_is_rev, :bam_is_mrev, :bam_get_qname, :bam_get_cigar,
             :bam_get_seq, :bam_get_qual, :bam_get_aux, :bam_get_l_aux,
             :bam_get_mempolicy]
    @eval $(func)(b::Ptr{bam1_t}) = $(func)(unsafe_load(b))
end

function sam_itr_next(htsfp::Ptr{htsFile}, itr::Ptr{hts_itr_t}, r::Ptr{bam1_t})
    is_bgzf = _bitfield(Ptr{UInt32}(htsfp), 4)
    is_cram = _bitfield(Ptr{UInt32}(htsfp), 3)
    if !is_bgzf && !is_cram
        # TODO: hts_log_error
        return Cint(-2)
    end
    if itr == C_NULL
        # TODO: hts_log_error
        return Cint(-2)
    end

    multi = _bitfield(Ptr{UInt32}(itr), 4)
    if multi
        return hts_itr_multi_next(htsfp, itr, r)
    else
        return hts_itr_next(is_bgzf ? unsafe_load(htsfp).fp : C_NULL, itr, r, htsfp)
    end
end
