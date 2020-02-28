# Types
# =====

const Coff_t = Clong

# Incomplete Structs
# ------------------

# These types must be used via pointer (aka. opaque pointer).
const BGZF = Cvoid
const hFILE = Cvoid
const hts_tpool = Cvoid
const knetFile = Cvoid
const faidx_t = Cvoid
const hts_opt = Cvoid
const htsThreadPool = Cvoid
const hts_idx_t = Cvoid
const hts_itr_t = Cvoid
const hts_reglist_t = Cvoid
const errmod_t = Cvoid
const probaln_par_t = Cvoid
const hts_md5_context = Cvoid
const tbx_conf_t = Cvoid
const tbx_t = Cvoid
const regidx_t = Cvoid
const regitr_t = Cvoid
const sam_hdr_t = Cvoid
const bam_pileup1_t = Cvoid
const bam_plp_t = Ptr{Cvoid}
const bam_mplp_t = Ptr{Cvoid}
# cram.h
const cram_file_def = Cvoid
const cram_fd = Cvoid
const cram_container = Cvoid
const cram_block = Cvoid
const cram_slice = Cvoid
const cram_metrics = Cvoid
const cram_block_slice_hdr = Cvoid
const cram_block_compression_hdr = Cvoid
const refs_t = Cvoid

# Function Types
# --------------
const kgets_func = Cvoid
const kgets_func2 = Cvoid
const hts_name2id_f = Ptr{Cvoid}
const hts_id2name_f = Ptr{Cvoid}
const hts_itr_query_func = Cvoid
const hts_readrec_func = Cvoid
const hts_seek_func = Cvoid
const hts_tell_func = Cvoid
const hts_itr_multi_query_func = Cvoid
const regidx_parse_f = Ptr{Cvoid}
const regidx_free_f = Ptr{Cvoid}
const bam_plp_auto_f = Ptr{Cvoid}

# Explicit Types
# --------------

const hts_pos_t = Int64

# TODO: Define an initializer.
struct kstring_t
    l::Csize_t
    m::Csize_t
    s::Ptr{Cchar}
end

@enum fai_format_options begin
    FAI_NONE
    FAI_FASTA
    FAI_FASTQ
end

struct htsFormat
    category::Cint  # enum htsFormatCategory
    format::Cint  # enum htsExactFormat
    version::Tuple{Cshort,Cshort}   # major, minor
    compression::Cint  # enum htsCompression
    compression_level::Cshort
    specific::Ptr{Cvoid}
end

struct htsFile
    bitflags::UInt32  # is_bin, is_write, is_be, is_cram, is_bgzf, and dummy
    lineno::Int64
    line::kstring_t
    fn::Ptr{Cchar}
    fn_aux::Ptr{Cchar}
    fp::Ptr{Cvoid}  # union of bgzf, cram, and hfile
    state::Ptr{Cvoid}
    format::htsFormat
    idx::Ptr{hts_idx_t}
    fnidx::Ptr{Cchar}
    bam_header::Ptr{sam_hdr_t}
end

const samFile = htsFile  # typedef alias

struct bam1_core_t
    pos::hts_pos_t
    tid::Int32
    bin::UInt16
    qual::UInt8
    l_extranul::UInt8
    flag::UInt16
    l_qname::UInt16
    n_cigar::UInt32
    l_qseq::Int32
    mtid::Int32
    mpos::hts_pos_t
    isize::hts_pos_t
end

struct bam1_t
    core::bam1_core_t
    id::UInt64
    data::Ptr{UInt8}
    l_data::Cint
    m_data::UInt32
    mempolicy::UInt32
end

@enum cram_block_method begin
    BM_ERROR = -1
    RAW      = 0
    GZIP     = 1
    BZIP2    = 2
    LZMA     = 3
    #RANS     = 4
    RANS0    = 4
    RANS1    = 10
    GZIP_RLE = 11
end
const RANS = RANS0

@enum cram_content_type begin
    CT_ERROR           = -1
    FILE_HEADER        = 0
    COMPRESSION_HEADER = 1
    MAPPED_SLICE       = 2
    UNMAPPED_SLICE     = 3
    EXTERNAL           = 4
    CORE               = 5
end
