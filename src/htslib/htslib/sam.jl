# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# sam_hdr_t *sam_hdr_init(void);
@defun sam_hdr_init()::Ptr{sam_hdr_t}

# sam_hdr_t *bam_hdr_read(BGZF *fp);
@defun bam_hdr_read(fp::Ref{BGZF})::Ptr{sam_hdr_t}

# int bam_hdr_write(BGZF *fp, const sam_hdr_t *h) HTS_RESULT_USED;
@defun bam_hdr_write(fp::Ref{BGZF}, h::Ref{sam_hdr_t})::Cint

# void sam_hdr_destroy(sam_hdr_t *h);
@defun sam_hdr_destroy(h::Ref{sam_hdr_t})::Cvoid

# sam_hdr_t *sam_hdr_dup(const sam_hdr_t *h0);
@defun sam_hdr_dup(h0::Ref{sam_hdr_t})::Ptr{sam_hdr_t}

# sam_hdr_t *sam_hdr_parse(size_t l_text, const char *text);
@defun sam_hdr_parse(l_text::Csize_t, text::Cstring)::Ptr{sam_hdr_t}

# sam_hdr_t *sam_hdr_read(samFile *fp);
@defun sam_hdr_read(fp::Ref{samFile})::Ptr{sam_hdr_t}

# int sam_hdr_write(samFile *fp, const sam_hdr_t *h) HTS_RESULT_USED;
@defun sam_hdr_write(fp::Ref{samFile}, h::Ref{sam_hdr_t})::Cint

# size_t sam_hdr_length(sam_hdr_t *h);
@defun sam_hdr_length(h::Ref{sam_hdr_t})::Csize_t

# const char *sam_hdr_str(sam_hdr_t *h);
@defun sam_hdr_str(h::Ref{sam_hdr_t})::Cstring

# int sam_hdr_nref(const sam_hdr_t *h);
@defun sam_hdr_nref(h::Ref{sam_hdr_t})::Cint

# int sam_hdr_add_lines(sam_hdr_t *h, const char *lines, size_t len);
@defun sam_hdr_add_lines(h::Ref{sam_hdr_t}, lines::Cstring, len::Csize_t)::Cint

# int sam_hdr_add_line(sam_hdr_t *h, const char *type, ...);
# ErrorException("unknown token: '.'")

# int sam_hdr_find_line_id(sam_hdr_t *h, const char *type, const char *ID_key, const char *ID_val, kstring_t *ks);
@defun sam_hdr_find_line_id(h::Ref{sam_hdr_t}, type::Cstring, ID_key::Cstring, ID_val::Cstring, ks::Ref{kstring_t})::Cint

# int sam_hdr_find_line_pos(sam_hdr_t *h, const char *type, int pos, kstring_t *ks);
@defun sam_hdr_find_line_pos(h::Ref{sam_hdr_t}, type::Cstring, pos::Cint, ks::Ref{kstring_t})::Cint

# int sam_hdr_remove_line_id(sam_hdr_t *h, const char *type, const char *ID_key, const char *ID_value);
@defun sam_hdr_remove_line_id(h::Ref{sam_hdr_t}, type::Cstring, ID_key::Cstring, ID_value::Cstring)::Cint

# int sam_hdr_remove_line_pos(sam_hdr_t *h, const char *type, int position);
@defun sam_hdr_remove_line_pos(h::Ref{sam_hdr_t}, type::Cstring, position::Cint)::Cint

# int sam_hdr_update_line(sam_hdr_t *h, const char *type, const char *ID_key, const char *ID_value, ...);
# ErrorException("unknown token: '.'")

# int sam_hdr_remove_except(sam_hdr_t *h, const char *type, const char *ID_key, const char *ID_value);
@defun sam_hdr_remove_except(h::Ref{sam_hdr_t}, type::Cstring, ID_key::Cstring, ID_value::Cstring)::Cint

# int sam_hdr_remove_lines(sam_hdr_t *h, const char *type, const char *id, void *rh);
@defun sam_hdr_remove_lines(h::Ref{sam_hdr_t}, type::Cstring, id::Cstring, rh::Ref{Cvoid})::Cint

# int sam_hdr_count_lines(sam_hdr_t *h, const char *type);
@defun sam_hdr_count_lines(h::Ref{sam_hdr_t}, type::Cstring)::Cint

# int sam_hdr_line_index(sam_hdr_t *bh, const char *type, const char *key);
@defun sam_hdr_line_index(bh::Ref{sam_hdr_t}, type::Cstring, key::Cstring)::Cint

# const char *sam_hdr_line_name(sam_hdr_t *bh, const char *type, int pos);
@defun sam_hdr_line_name(bh::Ref{sam_hdr_t}, type::Cstring, pos::Cint)::Cstring

# int sam_hdr_find_tag_id(sam_hdr_t *h, const char *type, const char *ID_key, const char *ID_value, const char *key, kstring_t *ks);
@defun sam_hdr_find_tag_id(h::Ref{sam_hdr_t}, type::Cstring, ID_key::Cstring, ID_value::Cstring, key::Cstring, ks::Ref{kstring_t})::Cint

# int sam_hdr_find_tag_pos(sam_hdr_t *h, const char *type, int pos, const char *key, kstring_t *ks);
@defun sam_hdr_find_tag_pos(h::Ref{sam_hdr_t}, type::Cstring, pos::Cint, key::Cstring, ks::Ref{kstring_t})::Cint

# int sam_hdr_remove_tag_id(sam_hdr_t *h, const char *type, const char *ID_key, const char *ID_value, const char *key);
@defun sam_hdr_remove_tag_id(h::Ref{sam_hdr_t}, type::Cstring, ID_key::Cstring, ID_value::Cstring, key::Cstring)::Cint

# int sam_hdr_name2tid(sam_hdr_t *h, const char *ref);
@defun sam_hdr_name2tid(h::Ref{sam_hdr_t}, ref::Cstring)::Cint

# const char *sam_hdr_tid2name(const sam_hdr_t *h, int tid);
@defun sam_hdr_tid2name(h::Ref{sam_hdr_t}, tid::Cint)::Cstring

# hts_pos_t sam_hdr_tid2len(const sam_hdr_t *h, int tid);
@defun sam_hdr_tid2len(h::Ref{sam_hdr_t}, tid::Cint)::hts_pos_t

# const char *sam_hdr_pg_id(sam_hdr_t *h, const char *name);
@defun sam_hdr_pg_id(h::Ref{sam_hdr_t}, name::Cstring)::Cstring

# int sam_hdr_add_pg(sam_hdr_t *h, const char *name, ...);
# ErrorException("unknown token: '.'")

# char *stringify_argv(int argc, char *argv[]);
@defun stringify_argv(argc::Cint, argv::Ref{Ref{Cchar}})::Ptr{Cchar}

# void sam_hdr_incr_ref(sam_hdr_t *h);
@defun sam_hdr_incr_ref(h::Ref{sam_hdr_t})::Cvoid

# bam1_t *bam_init1(void);
@defun bam_init1()::Ptr{bam1_t}

# void bam_destroy1(bam1_t *b);
@defun bam_destroy1(b::Ref{bam1_t})::Cvoid

# int bam_read1(BGZF *fp, bam1_t *b) HTS_RESULT_USED;
@defun bam_read1(fp::Ref{BGZF}, b::Ref{bam1_t})::Cint

# int bam_write1(BGZF *fp, const bam1_t *b) HTS_RESULT_USED;
@defun bam_write1(fp::Ref{BGZF}, b::Ref{bam1_t})::Cint

# bam1_t *bam_copy1(bam1_t *bdst, const bam1_t *bsrc) HTS_RESULT_USED;
@defun bam_copy1(bdst::Ref{bam1_t}, bsrc::Ref{bam1_t})::Ptr{bam1_t}

# bam1_t *bam_dup1(const bam1_t *bsrc);
@defun bam_dup1(bsrc::Ref{bam1_t})::Ptr{bam1_t}

# hts_pos_t bam_cigar2qlen(int n_cigar, const uint32_t *cigar);
@defun bam_cigar2qlen(n_cigar::Cint, cigar::Ref{UInt32})::hts_pos_t

# hts_pos_t bam_cigar2rlen(int n_cigar, const uint32_t *cigar);
@defun bam_cigar2rlen(n_cigar::Cint, cigar::Ref{UInt32})::hts_pos_t

# hts_pos_t bam_endpos(const bam1_t *b);
@defun bam_endpos(b::Ref{bam1_t})::hts_pos_t

# int bam_str2flag(const char *str);
@defun bam_str2flag(str::Cstring)::Cint

# char *bam_flag2str(int flag);
@defun bam_flag2str(flag::Cint)::Ptr{Cchar}

# int bam_set_qname(bam1_t *b, const char *qname);
@defun bam_set_qname(b::Ref{bam1_t}, qname::Cstring)::Cint

# int sam_idx_init(htsFile *fp, sam_hdr_t *h, int min_shift, const char *fnidx);
@defun sam_idx_init(fp::Ref{htsFile}, h::Ref{sam_hdr_t}, min_shift::Cint, fnidx::Cstring)::Cint

# int sam_idx_save(htsFile *fp) HTS_RESULT_USED;
@defun sam_idx_save(fp::Ref{htsFile})::Cint

# hts_idx_t *sam_index_load(htsFile *fp, const char *fn);
@defun sam_index_load(fp::Ref{htsFile}, fn::Cstring)::Ptr{hts_idx_t}

# hts_idx_t *sam_index_load2(htsFile *fp, const char *fn, const char *fnidx);
@defun sam_index_load2(fp::Ref{htsFile}, fn::Cstring, fnidx::Cstring)::Ptr{hts_idx_t}

# hts_idx_t *sam_index_load3(htsFile *fp, const char *fn, const char *fnidx, int flags);
@defun sam_index_load3(fp::Ref{htsFile}, fn::Cstring, fnidx::Cstring, flags::Cint)::Ptr{hts_idx_t}

# int sam_index_build(const char *fn, int min_shift) HTS_RESULT_USED;
@defun sam_index_build(fn::Cstring, min_shift::Cint)::Cint

# int sam_index_build2(const char *fn, const char *fnidx, int min_shift) HTS_RESULT_USED;
@defun sam_index_build2(fn::Cstring, fnidx::Cstring, min_shift::Cint)::Cint

# int sam_index_build3(const char *fn, const char *fnidx, int min_shift, int nthreads) HTS_RESULT_USED;
@defun sam_index_build3(fn::Cstring, fnidx::Cstring, min_shift::Cint, nthreads::Cint)::Cint

# hts_itr_t *sam_itr_queryi(const hts_idx_t *idx, int tid, hts_pos_t beg, hts_pos_t end);
@defun sam_itr_queryi(idx::Ref{hts_idx_t}, tid::Cint, beg::hts_pos_t, end_::hts_pos_t)::Ptr{hts_itr_t}

# hts_itr_t *sam_itr_querys(const hts_idx_t *idx, sam_hdr_t *hdr, const char *region);
@defun sam_itr_querys(idx::Ref{hts_idx_t}, hdr::Ref{sam_hdr_t}, region::Cstring)::Ptr{hts_itr_t}

# hts_itr_t *sam_itr_regions(const hts_idx_t *idx, sam_hdr_t *hdr, hts_reglist_t *reglist, unsigned int regcount);
@defun sam_itr_regions(idx::Ref{hts_idx_t}, hdr::Ref{sam_hdr_t}, reglist::Ref{hts_reglist_t}, regcount::Cuint)::Ptr{hts_itr_t}

# hts_itr_t *sam_itr_regarray(const hts_idx_t *idx, sam_hdr_t *hdr, char **regarray, unsigned int regcount);
@defun sam_itr_regarray(idx::Ref{hts_idx_t}, hdr::Ref{sam_hdr_t}, regarray::Ref{Ref{Cchar}}, regcount::Cuint)::Ptr{hts_itr_t}

# const char *sam_parse_region(sam_hdr_t *h, const char *s, int *tid, hts_pos_t *beg, hts_pos_t *end, int flags);
@defun sam_parse_region(h::Ref{sam_hdr_t}, s::Cstring, tid::Ref{Cint}, beg::Ref{hts_pos_t}, end_::Ref{hts_pos_t}, flags::Cint)::Cstring

# int sam_open_mode(char *mode, const char *fn, const char *format);
@defun sam_open_mode(mode::Ref{Cchar}, fn::Cstring, format::Cstring)::Cint

# char *sam_open_mode_opts(const char *fn, const char *mode, const char *format);
@defun sam_open_mode_opts(fn::Cstring, mode::Cstring, format::Cstring)::Ptr{Cchar}

# int sam_hdr_change_HD(sam_hdr_t *h, const char *key, const char *val);
@defun sam_hdr_change_HD(h::Ref{sam_hdr_t}, key::Cstring, val::Cstring)::Cint

# int sam_parse1(kstring_t *s, sam_hdr_t *h, bam1_t *b) HTS_RESULT_USED;
@defun sam_parse1(s::Ref{kstring_t}, h::Ref{sam_hdr_t}, b::Ref{bam1_t})::Cint

# int sam_format1(const sam_hdr_t *h, const bam1_t *b, kstring_t *str) HTS_RESULT_USED;
@defun sam_format1(h::Ref{sam_hdr_t}, b::Ref{bam1_t}, str::Ref{kstring_t})::Cint

# int sam_read1(samFile *fp, sam_hdr_t *h, bam1_t *b) HTS_RESULT_USED;
@defun sam_read1(fp::Ref{samFile}, h::Ref{sam_hdr_t}, b::Ref{bam1_t})::Cint

# int sam_write1(samFile *fp, const sam_hdr_t *h, const bam1_t *b) HTS_RESULT_USED;
@defun sam_write1(fp::Ref{samFile}, h::Ref{sam_hdr_t}, b::Ref{bam1_t})::Cint

# uint8_t *bam_aux_get(const bam1_t *b, const char tag[2]);
@defun bam_aux_get(b::Ref{bam1_t}, tag::Ref{Cchar})::Ptr{UInt8}

# int64_t bam_aux2i(const uint8_t *s);
@defun bam_aux2i(s::Ref{UInt8})::Int64

# double bam_aux2f(const uint8_t *s);
@defun bam_aux2f(s::Ref{UInt8})::Cdouble

# char bam_aux2A(const uint8_t *s);
@defun bam_aux2A(s::Ref{UInt8})::Cchar

# char *bam_aux2Z(const uint8_t *s);
@defun bam_aux2Z(s::Ref{UInt8})::Ptr{Cchar}

# uint32_t bam_auxB_len(const uint8_t *s);
@defun bam_auxB_len(s::Ref{UInt8})::UInt32

# int64_t bam_auxB2i(const uint8_t *s, uint32_t idx);
@defun bam_auxB2i(s::Ref{UInt8}, idx::UInt32)::Int64

# double bam_auxB2f(const uint8_t *s, uint32_t idx);
@defun bam_auxB2f(s::Ref{UInt8}, idx::UInt32)::Cdouble

# int bam_aux_append(bam1_t *b, const char tag[2], char type, int len, const uint8_t *data);
@defun bam_aux_append(b::Ref{bam1_t}, tag::Ref{Cchar}, type::Cchar, len::Cint, data::Ref{UInt8})::Cint

# int bam_aux_del(bam1_t *b, uint8_t *s);
@defun bam_aux_del(b::Ref{bam1_t}, s::Ref{UInt8})::Cint

# int bam_aux_update_str(bam1_t *b, const char tag[2], int len, const char *data);
@defun bam_aux_update_str(b::Ref{bam1_t}, tag::Ref{Cchar}, len::Cint, data::Cstring)::Cint

# int bam_aux_update_int(bam1_t *b, const char tag[2], int64_t val);
@defun bam_aux_update_int(b::Ref{bam1_t}, tag::Ref{Cchar}, val::Int64)::Cint

# int bam_aux_update_float(bam1_t *b, const char tag[2], float val);
@defun bam_aux_update_float(b::Ref{bam1_t}, tag::Ref{Cchar}, val::Cfloat)::Cint

# int bam_aux_update_array(bam1_t *b, const char tag[2], uint8_t type, uint32_t items, void *data);
@defun bam_aux_update_array(b::Ref{bam1_t}, tag::Ref{Cchar}, type::UInt8, items::UInt32, data::Ref{Cvoid})::Cint

# bam_plp_t bam_plp_init(bam_plp_auto_f func, void *data);
@defun bam_plp_init(func::bam_plp_auto_f, data::Ref{Cvoid})::bam_plp_t

# void bam_plp_destroy(bam_plp_t iter);
@defun bam_plp_destroy(iter::bam_plp_t)::Cvoid

# int bam_plp_push(bam_plp_t iter, const bam1_t *b);
@defun bam_plp_push(iter::bam_plp_t, b::Ref{bam1_t})::Cint

# const bam_pileup1_t *bam_plp_next(bam_plp_t iter, int *_tid, int *_pos, int *_n_plp);
@defun bam_plp_next(iter::bam_plp_t, _tid::Ref{Cint}, _pos::Ref{Cint}, _n_plp::Ref{Cint})::Ptr{bam_pileup1_t}

# const bam_pileup1_t *bam_plp_auto(bam_plp_t iter, int *_tid, int *_pos, int *_n_plp);
@defun bam_plp_auto(iter::bam_plp_t, _tid::Ref{Cint}, _pos::Ref{Cint}, _n_plp::Ref{Cint})::Ptr{bam_pileup1_t}

# const bam_pileup1_t *bam_plp64_next(bam_plp_t iter, int *_tid, hts_pos_t *_pos, int *_n_plp);
@defun bam_plp64_next(iter::bam_plp_t, _tid::Ref{Cint}, _pos::Ref{hts_pos_t}, _n_plp::Ref{Cint})::Ptr{bam_pileup1_t}

# const bam_pileup1_t *bam_plp64_auto(bam_plp_t iter, int *_tid, hts_pos_t *_pos, int *_n_plp);
@defun bam_plp64_auto(iter::bam_plp_t, _tid::Ref{Cint}, _pos::Ref{hts_pos_t}, _n_plp::Ref{Cint})::Ptr{bam_pileup1_t}

# void bam_plp_set_maxcnt(bam_plp_t iter, int maxcnt);
@defun bam_plp_set_maxcnt(iter::bam_plp_t, maxcnt::Cint)::Cvoid

# void bam_plp_reset(bam_plp_t iter);
@defun bam_plp_reset(iter::bam_plp_t)::Cvoid

# void bam_plp_constructor(bam_plp_t plp, int (*func)(void *data, const bam1_t *b, bam_pileup_cd *cd));
# ErrorException("function pointer?")

# void bam_plp_destructor(bam_plp_t plp, int (*func)(void *data, const bam1_t *b, bam_pileup_cd *cd));
# ErrorException("function pointer?")

# int bam_plp_insertion(const bam_pileup1_t *p, kstring_t *ins, int *del_len) HTS_RESULT_USED;
@defun bam_plp_insertion(p::Ref{bam_pileup1_t}, ins::Ref{kstring_t}, del_len::Ref{Cint})::Cint

# bam_mplp_t bam_mplp_init(int n, bam_plp_auto_f func, void **data);
@defun bam_mplp_init(n::Cint, func::bam_plp_auto_f, data::Ref{Ref{Cvoid}})::bam_mplp_t

# int bam_mplp_init_overlaps(bam_mplp_t iter);
@defun bam_mplp_init_overlaps(iter::bam_mplp_t)::Cint

# void bam_mplp_destroy(bam_mplp_t iter);
@defun bam_mplp_destroy(iter::bam_mplp_t)::Cvoid

# void bam_mplp_set_maxcnt(bam_mplp_t iter, int maxcnt);
@defun bam_mplp_set_maxcnt(iter::bam_mplp_t, maxcnt::Cint)::Cvoid

# int bam_mplp_auto(bam_mplp_t iter, int *_tid, int *_pos, int *n_plp, const bam_pileup1_t **plp);
@defun bam_mplp_auto(iter::bam_mplp_t, _tid::Ref{Cint}, _pos::Ref{Cint}, n_plp::Ref{Cint}, plp::Ref{Ref{bam_pileup1_t}})::Cint

# int bam_mplp64_auto(bam_mplp_t iter, int *_tid, hts_pos_t *_pos, int *n_plp, const bam_pileup1_t **plp);
@defun bam_mplp64_auto(iter::bam_mplp_t, _tid::Ref{Cint}, _pos::Ref{hts_pos_t}, n_plp::Ref{Cint}, plp::Ref{Ref{bam_pileup1_t}})::Cint

# void bam_mplp_reset(bam_mplp_t iter);
@defun bam_mplp_reset(iter::bam_mplp_t)::Cvoid

# void bam_mplp_constructor(bam_mplp_t iter, int (*func)(void *data, const bam1_t *b, bam_pileup_cd *cd));
# ErrorException("function pointer?")

# void bam_mplp_destructor(bam_mplp_t iter, int (*func)(void *data, const bam1_t *b, bam_pileup_cd *cd));
# ErrorException("function pointer?")

# int sam_cap_mapq(bam1_t *b, const char *ref, hts_pos_t ref_len, int thres);
@defun sam_cap_mapq(b::Ref{bam1_t}, ref::Cstring, ref_len::hts_pos_t, thres::Cint)::Cint

# int sam_prob_realn(bam1_t *b, const char *ref, hts_pos_t ref_len, int flag);
@defun sam_prob_realn(b::Ref{bam1_t}, ref::Cstring, ref_len::hts_pos_t, flag::Cint)::Cint

