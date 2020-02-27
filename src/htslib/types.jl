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
const htsFile = Cvoid
const htsFormat = Cvoid
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
const samFile = htsFile
const bam1_t = Cvoid  # TODO: mirror
const bam_pileup1_t = Cvoid
const bam_plp_t = Ptr{Cvoid}
const bam_mplp_t = Ptr{Cvoid}

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
