# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# int fai_build3(const char *fn, const char *fnfai, const char *fngzi) HTS_RESULT_USED;
@defun fai_build3(fn::Cstring, fnfai::Cstring, fngzi::Cstring)::Cint

# int fai_build(const char *fn) HTS_RESULT_USED;
@defun fai_build(fn::Cstring)::Cint

# void fai_destroy(faidx_t *fai);
@defun fai_destroy(fai::Ptr{faidx_t})::Cvoid

# faidx_t *fai_load3(const char *fn, const char *fnfai, const char *fngzi, int flags);
@defun fai_load3(fn::Cstring, fnfai::Cstring, fngzi::Cstring, flags::Cint)::Ptr{faidx_t}

# faidx_t *fai_load(const char *fn);
@defun fai_load(fn::Cstring)::Ptr{faidx_t}

# faidx_t *fai_load3_format(const char *fn, const char *fnfai, const char *fngzi, int flags, enum fai_format_options format);
@defun fai_load3_format(fn::Cstring, fnfai::Cstring, fngzi::Cstring, flags::Cint, format::fai_format_options)::Ptr{faidx_t}

# faidx_t *fai_load_format(const char *fn, enum fai_format_options format);
@defun fai_load_format(fn::Cstring, format::fai_format_options)::Ptr{faidx_t}

# char *fai_fetch(const faidx_t *fai, const char *reg, int *len);
@defun fai_fetch(fai::Ptr{faidx_t}, reg::Cstring, len::Ptr{Cint})::Ptr{Cchar}

# char *fai_fetch64(const faidx_t *fai, const char *reg, hts_pos_t *len);
@defun fai_fetch64(fai::Ptr{faidx_t}, reg::Cstring, len::Ptr{hts_pos_t})::Ptr{Cchar}

# char *fai_fetchqual(const faidx_t *fai, const char *reg, int *len);
@defun fai_fetchqual(fai::Ptr{faidx_t}, reg::Cstring, len::Ptr{Cint})::Ptr{Cchar}

# char *fai_fetchqual64(const faidx_t *fai, const char *reg, hts_pos_t *len);
@defun fai_fetchqual64(fai::Ptr{faidx_t}, reg::Cstring, len::Ptr{hts_pos_t})::Ptr{Cchar}

# int faidx_fetch_nseq(const faidx_t *fai) HTS_DEPRECATED("Please use faidx_nseq instead");
@defun faidx_fetch_nseq(fai::Ptr{faidx_t})::Cint

# char *faidx_fetch_seq(const faidx_t *fai, const char *c_name, int p_beg_i, int p_end_i, int *len);
@defun faidx_fetch_seq(fai::Ptr{faidx_t}, c_name::Cstring, p_beg_i::Cint, p_end_i::Cint, len::Ptr{Cint})::Ptr{Cchar}

# char *faidx_fetch_seq64(const faidx_t *fai, const char *c_name, hts_pos_t p_beg_i, hts_pos_t p_end_i, hts_pos_t *len);
@defun faidx_fetch_seq64(fai::Ptr{faidx_t}, c_name::Cstring, p_beg_i::hts_pos_t, p_end_i::hts_pos_t, len::Ptr{hts_pos_t})::Ptr{Cchar}

# char *faidx_fetch_qual(const faidx_t *fai, const char *c_name, int p_beg_i, int p_end_i, int *len);
@defun faidx_fetch_qual(fai::Ptr{faidx_t}, c_name::Cstring, p_beg_i::Cint, p_end_i::Cint, len::Ptr{Cint})::Ptr{Cchar}

# char *faidx_fetch_qual64(const faidx_t *fai, const char *c_name, hts_pos_t p_beg_i, hts_pos_t p_end_i, hts_pos_t *len);
@defun faidx_fetch_qual64(fai::Ptr{faidx_t}, c_name::Cstring, p_beg_i::hts_pos_t, p_end_i::hts_pos_t, len::Ptr{hts_pos_t})::Ptr{Cchar}

# int faidx_has_seq(const faidx_t *fai, const char *seq);
@defun faidx_has_seq(fai::Ptr{faidx_t}, seq::Cstring)::Cint

# int faidx_nseq(const faidx_t *fai);
@defun faidx_nseq(fai::Ptr{faidx_t})::Cint

# const char *faidx_iseq(const faidx_t *fai, int i);
@defun faidx_iseq(fai::Ptr{faidx_t}, i::Cint)::Cstring

# int faidx_seq_len(const faidx_t *fai, const char *seq);
@defun faidx_seq_len(fai::Ptr{faidx_t}, seq::Cstring)::Cint

# const char *fai_parse_region(const faidx_t *fai, const char *s, int *tid, hts_pos_t *beg, hts_pos_t *end, int flags);
@defun fai_parse_region(fai::Ptr{faidx_t}, s::Cstring, tid::Ptr{Cint}, beg::Ptr{hts_pos_t}, end_::Ptr{hts_pos_t}, flags::Cint)::Cstring

# void fai_set_cache_size(faidx_t *fai, int cache_size);
@defun fai_set_cache_size(fai::Ptr{faidx_t}, cache_size::Cint)::Cvoid

