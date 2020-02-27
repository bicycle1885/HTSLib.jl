# Functions
# =========
#
# Function definitions that are derived from C macros or static inline
# functions.  These are considered as part of htslib's public API but not
# exported from the dynamic library.
#

# Defined in sam.h
# ----------------

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

# Derive functions for pointer argument.
for func in [:bam_is_rev, :bam_is_mrev, :bam_get_qname, :bam_get_cigar,
             :bam_get_seq, :bam_get_qual, :bam_get_aux, :bam_get_l_aux,
             :bam_get_mempolicy]
    @eval $(func)(b::Ptr{bam1_t}) = $(func)(unsafe_load(b))
end

