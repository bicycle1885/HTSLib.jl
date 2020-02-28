# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# int hts_resize_array_(size_t, size_t, size_t, void *, void **, int, const char *);
# ErrorException("found unnamed argument(s)")

# void hts_free(void *ptr);
@defun hts_free(ptr::Ptr{Cvoid})::Cvoid

# int hts_opt_add(hts_opt **opts, const char *c_arg);
@defun hts_opt_add(opts::Ptr{Ptr{hts_opt}}, c_arg::Cstring)::Cint

# int hts_opt_apply(htsFile *fp, hts_opt *opts);
@defun hts_opt_apply(fp::Ptr{htsFile}, opts::Ptr{hts_opt})::Cint

# void hts_opt_free(hts_opt *opts);
@defun hts_opt_free(opts::Ptr{hts_opt})::Cvoid

# int hts_parse_format(htsFormat *opt, const char *str);
@defun hts_parse_format(opt::Ptr{htsFormat}, str::Cstring)::Cint

# int hts_parse_opt_list(htsFormat *opt, const char *str);
@defun hts_parse_opt_list(opt::Ptr{htsFormat}, str::Cstring)::Cint

# const char *hts_version(void);
@defun hts_version()::Cstring

# int hts_detect_format(struct hFILE *fp, htsFormat *fmt);
@defun hts_detect_format(fp::Ptr{hFILE}, fmt::Ptr{htsFormat})::Cint

# char *hts_format_description(const htsFormat *format);
@defun hts_format_description(format::Ptr{htsFormat})::Ptr{Cchar}

# htsFile *hts_open(const char *fn, const char *mode);
@defun hts_open(fn::Cstring, mode::Cstring)::Ptr{htsFile}

# htsFile *hts_open_format(const char *fn, const char *mode, const htsFormat *fmt);
@defun hts_open_format(fn::Cstring, mode::Cstring, fmt::Ptr{htsFormat})::Ptr{htsFile}

# htsFile *hts_hopen(struct hFILE *fp, const char *fn, const char *mode);
@defun hts_hopen(fp::Ptr{hFILE}, fn::Cstring, mode::Cstring)::Ptr{htsFile}

# int hts_close(htsFile *fp);
@defun hts_close(fp::Ptr{htsFile})::Cint

# const htsFormat *hts_get_format(htsFile *fp);
@defun hts_get_format(fp::Ptr{htsFile})::Ptr{htsFormat}

# const char *hts_format_file_extension(const htsFormat *format);
@defun hts_format_file_extension(format::Ptr{htsFormat})::Cstring

# int hts_set_opt(htsFile *fp, enum hts_fmt_option opt, ...);
# ErrorException("unknown token: '.'")

# int hts_getline(htsFile *fp, int delimiter, kstring_t *str);
@defun hts_getline(fp::Ptr{htsFile}, delimiter::Cint, str::Ptr{kstring_t})::Cint

# char **hts_readlines(const char *fn, int *_n);
@defun hts_readlines(fn::Cstring, _n::Ptr{Cint})::Ptr{Ptr{Cchar}}

# char **hts_readlist(const char *fn, int is_file, int *_n);
@defun hts_readlist(fn::Cstring, is_file::Cint, _n::Ptr{Cint})::Ptr{Ptr{Cchar}}

# int hts_set_threads(htsFile *fp, int n);
@defun hts_set_threads(fp::Ptr{htsFile}, n::Cint)::Cint

# int hts_set_thread_pool(htsFile *fp, htsThreadPool *p);
@defun hts_set_thread_pool(fp::Ptr{htsFile}, p::Ptr{htsThreadPool})::Cint

# void hts_set_cache_size(htsFile *fp, int n);
@defun hts_set_cache_size(fp::Ptr{htsFile}, n::Cint)::Cvoid

# int hts_set_fai_filename(htsFile *fp, const char *fn_aux);
@defun hts_set_fai_filename(fp::Ptr{htsFile}, fn_aux::Cstring)::Cint

# int hts_check_EOF(htsFile *fp);
@defun hts_check_EOF(fp::Ptr{htsFile})::Cint

# hts_idx_t *hts_idx_init(int n, int fmt, uint64_t offset0, int min_shift, int n_lvls);
@defun hts_idx_init(n::Cint, fmt::Cint, offset0::UInt64, min_shift::Cint, n_lvls::Cint)::Ptr{hts_idx_t}

# void hts_idx_destroy(hts_idx_t *idx);
@defun hts_idx_destroy(idx::Ptr{hts_idx_t})::Cvoid

# int hts_idx_push(hts_idx_t *idx, int tid, hts_pos_t beg, hts_pos_t end, uint64_t offset, int is_mapped);
@defun hts_idx_push(idx::Ptr{hts_idx_t}, tid::Cint, beg::hts_pos_t, end_::hts_pos_t, offset::UInt64, is_mapped::Cint)::Cint

# int hts_idx_finish(hts_idx_t *idx, uint64_t final_offset);
@defun hts_idx_finish(idx::Ptr{hts_idx_t}, final_offset::UInt64)::Cint

# int hts_idx_fmt(hts_idx_t *idx);
@defun hts_idx_fmt(idx::Ptr{hts_idx_t})::Cint

# int hts_idx_tbi_name(hts_idx_t *idx, int tid, const char *name);
@defun hts_idx_tbi_name(idx::Ptr{hts_idx_t}, tid::Cint, name::Cstring)::Cint

# int hts_idx_save(const hts_idx_t *idx, const char *fn, int fmt) HTS_RESULT_USED;
@defun hts_idx_save(idx::Ptr{hts_idx_t}, fn::Cstring, fmt::Cint)::Cint

# int hts_idx_save_as(const hts_idx_t *idx, const char *fn, const char *fnidx, int fmt) HTS_RESULT_USED;
@defun hts_idx_save_as(idx::Ptr{hts_idx_t}, fn::Cstring, fnidx::Cstring, fmt::Cint)::Cint

# hts_idx_t *hts_idx_load(const char *fn, int fmt);
@defun hts_idx_load(fn::Cstring, fmt::Cint)::Ptr{hts_idx_t}

# hts_idx_t *hts_idx_load2(const char *fn, const char *fnidx);
@defun hts_idx_load2(fn::Cstring, fnidx::Cstring)::Ptr{hts_idx_t}

# hts_idx_t *hts_idx_load3(const char *fn, const char *fnidx, int fmt, int flags);
@defun hts_idx_load3(fn::Cstring, fnidx::Cstring, fmt::Cint, flags::Cint)::Ptr{hts_idx_t}

# uint8_t *hts_idx_get_meta(hts_idx_t *idx, uint32_t *l_meta);
@defun hts_idx_get_meta(idx::Ptr{hts_idx_t}, l_meta::Ptr{UInt32})::Ptr{UInt8}

# int hts_idx_set_meta(hts_idx_t *idx, uint32_t l_meta, uint8_t *meta, int is_copy);
@defun hts_idx_set_meta(idx::Ptr{hts_idx_t}, l_meta::UInt32, meta::Ptr{UInt8}, is_copy::Cint)::Cint

# int hts_idx_get_stat(const hts_idx_t* idx, int tid, uint64_t* mapped, uint64_t* unmapped);
@defun hts_idx_get_stat(idx::Ptr{hts_idx_t}, tid::Cint, mapped::Ptr{UInt64}, unmapped::Ptr{UInt64})::Cint

# uint64_t hts_idx_get_n_no_coor(const hts_idx_t* idx);
@defun hts_idx_get_n_no_coor(idx::Ptr{hts_idx_t})::UInt64

# long long hts_parse_decimal(const char *str, char **strend, int flags);
@defun hts_parse_decimal(str::Cstring, strend::Ptr{Ptr{Cchar}}, flags::Cint)::Clonglong

# const char *hts_parse_reg64(const char *str, hts_pos_t *beg, hts_pos_t *end);
@defun hts_parse_reg64(str::Cstring, beg::Ptr{hts_pos_t}, end_::Ptr{hts_pos_t})::Cstring

# const char *hts_parse_reg(const char *str, int *beg, int *end);
@defun hts_parse_reg(str::Cstring, beg::Ptr{Cint}, end_::Ptr{Cint})::Cstring

# const char *hts_parse_region(const char *s, int *tid, hts_pos_t *beg, hts_pos_t *end, hts_name2id_f getid, void *hdr, int flags);
@defun hts_parse_region(s::Cstring, tid::Ptr{Cint}, beg::Ptr{hts_pos_t}, end_::Ptr{hts_pos_t}, getid::hts_name2id_f, hdr::Ptr{Cvoid}, flags::Cint)::Cstring

# hts_itr_t *hts_itr_query(const hts_idx_t *idx, int tid, hts_pos_t beg, hts_pos_t end, hts_readrec_func *readrec);
@defun hts_itr_query(idx::Ptr{hts_idx_t}, tid::Cint, beg::hts_pos_t, end_::hts_pos_t, readrec::Ptr{hts_readrec_func})::Ptr{hts_itr_t}

# void hts_itr_destroy(hts_itr_t *iter);
@defun hts_itr_destroy(iter::Ptr{hts_itr_t})::Cvoid

# hts_itr_t *hts_itr_querys(const hts_idx_t *idx, const char *reg, hts_name2id_f getid, void *hdr, hts_itr_query_func *itr_query, hts_readrec_func *readrec);
@defun hts_itr_querys(idx::Ptr{hts_idx_t}, reg::Cstring, getid::hts_name2id_f, hdr::Ptr{Cvoid}, itr_query::Ptr{hts_itr_query_func}, readrec::Ptr{hts_readrec_func})::Ptr{hts_itr_t}

# int hts_itr_next(BGZF *fp, hts_itr_t *iter, void *r, void *data) HTS_RESULT_USED;
@defun hts_itr_next(fp::Ptr{BGZF}, iter::Ptr{hts_itr_t}, r::Ptr{Cvoid}, data::Ptr{Cvoid})::Cint

# const char **hts_idx_seqnames(const hts_idx_t *idx, int *n, hts_id2name_f getid, void *hdr);
@defun hts_idx_seqnames(idx::Ptr{hts_idx_t}, n::Ptr{Cint}, getid::hts_id2name_f, hdr::Ptr{Cvoid})::Ptr{Cstring}

# int hts_itr_multi_bam(const hts_idx_t *idx, hts_itr_t *iter);
@defun hts_itr_multi_bam(idx::Ptr{hts_idx_t}, iter::Ptr{hts_itr_t})::Cint

# int hts_itr_multi_cram(const hts_idx_t *idx, hts_itr_t *iter);
@defun hts_itr_multi_cram(idx::Ptr{hts_idx_t}, iter::Ptr{hts_itr_t})::Cint

# hts_itr_t *hts_itr_regions(const hts_idx_t *idx, hts_reglist_t *reglist, int count, hts_name2id_f getid, void *hdr, hts_itr_multi_query_func *itr_specific, hts_readrec_func *readrec, hts_seek_func *seek, hts_tell_func *tell);
@defun hts_itr_regions(idx::Ptr{hts_idx_t}, reglist::Ptr{hts_reglist_t}, count::Cint, getid::hts_name2id_f, hdr::Ptr{Cvoid}, itr_specific::Ptr{hts_itr_multi_query_func}, readrec::Ptr{hts_readrec_func}, seek::Ptr{hts_seek_func}, tell::Ptr{hts_tell_func})::Ptr{hts_itr_t}

# int hts_itr_multi_next(htsFile *fd, hts_itr_t *iter, void *r);
@defun hts_itr_multi_next(fd::Ptr{htsFile}, iter::Ptr{hts_itr_t}, r::Ptr{Cvoid})::Cint

# hts_reglist_t *hts_reglist_create(char **argv, int argc, int *r_count, void *hdr, hts_name2id_f getid);
@defun hts_reglist_create(argv::Ptr{Ptr{Cchar}}, argc::Cint, r_count::Ptr{Cint}, hdr::Ptr{Cvoid}, getid::hts_name2id_f)::Ptr{hts_reglist_t}

# void hts_reglist_free(hts_reglist_t *reglist, int count);
@defun hts_reglist_free(reglist::Ptr{hts_reglist_t}, count::Cint)::Cvoid

# int hts_file_type(const char *fname);
@defun hts_file_type(fname::Cstring)::Cint

# errmod_t *errmod_init(double depcorr);
@defun errmod_init(depcorr::Cdouble)::Ptr{errmod_t}

# void errmod_destroy(errmod_t *em);
@defun errmod_destroy(em::Ptr{errmod_t})::Cvoid

# int errmod_cal(const errmod_t *em, int n, int m, uint16_t *bases, float *q);
@defun errmod_cal(em::Ptr{errmod_t}, n::Cint, m::Cint, bases::Ptr{UInt16}, q::Ptr{Cfloat})::Cint

# int probaln_glocal(const uint8_t *ref, int l_ref, const uint8_t *query, int l_query, const uint8_t *iqual, const probaln_par_t *c, int *state, uint8_t *q);
@defun probaln_glocal(ref::Ptr{UInt8}, l_ref::Cint, query::Ptr{UInt8}, l_query::Cint, iqual::Ptr{UInt8}, c::Ptr{probaln_par_t}, state::Ptr{Cint}, q::Ptr{UInt8})::Cint

# hts_md5_context *hts_md5_init(void);
@defun hts_md5_init()::Ptr{hts_md5_context}

# void hts_md5_update(hts_md5_context *ctx, const void *data, unsigned long size);
@defun hts_md5_update(ctx::Ptr{hts_md5_context}, data::Ptr{Cvoid}, size::Culong)::Cvoid

# void hts_md5_final(unsigned char *digest, hts_md5_context *ctx);
@defun hts_md5_final(digest::Ptr{Cuchar}, ctx::Ptr{hts_md5_context})::Cvoid

# void hts_md5_reset(hts_md5_context *ctx);
@defun hts_md5_reset(ctx::Ptr{hts_md5_context})::Cvoid

# void hts_md5_hex(char *hex, const unsigned char *digest);
@defun hts_md5_hex(hex::Ptr{Cchar}, digest::Ptr{Cuchar})::Cvoid

# void hts_md5_destroy(hts_md5_context *ctx);
@defun hts_md5_destroy(ctx::Ptr{hts_md5_context})::Cvoid

