# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# int tbx_name2id(tbx_t *tbx, const char *ss);
@defun tbx_name2id(tbx::Ref{tbx_t}, ss::Cstring)::Cint

# BGZF *hts_get_bgzfp(htsFile *fp);
@defun hts_get_bgzfp(fp::Ref{htsFile})::Ptr{BGZF}

# int tbx_readrec(BGZF *fp, void *tbxv, void *sv, int *tid, hts_pos_t *beg, hts_pos_t *end);
@defun tbx_readrec(fp::Ref{BGZF}, tbxv::Ref{Cvoid}, sv::Ref{Cvoid}, tid::Ref{Cint}, beg::Ref{hts_pos_t}, end_::Ref{hts_pos_t})::Cint

# tbx_t *tbx_index(BGZF *fp, int min_shift, const tbx_conf_t *conf);
@defun tbx_index(fp::Ref{BGZF}, min_shift::Cint, conf::Ref{tbx_conf_t})::Ptr{tbx_t}

# int tbx_index_build(const char *fn, int min_shift, const tbx_conf_t *conf);
@defun tbx_index_build(fn::Cstring, min_shift::Cint, conf::Ref{tbx_conf_t})::Cint

# int tbx_index_build2(const char *fn, const char *fnidx, int min_shift, const tbx_conf_t *conf);
@defun tbx_index_build2(fn::Cstring, fnidx::Cstring, min_shift::Cint, conf::Ref{tbx_conf_t})::Cint

# int tbx_index_build3(const char *fn, const char *fnidx, int min_shift, int n_threads, const tbx_conf_t *conf);
@defun tbx_index_build3(fn::Cstring, fnidx::Cstring, min_shift::Cint, n_threads::Cint, conf::Ref{tbx_conf_t})::Cint

# tbx_t *tbx_index_load(const char *fn);
@defun tbx_index_load(fn::Cstring)::Ptr{tbx_t}

# tbx_t *tbx_index_load2(const char *fn, const char *fnidx);
@defun tbx_index_load2(fn::Cstring, fnidx::Cstring)::Ptr{tbx_t}

# tbx_t *tbx_index_load3(const char *fn, const char *fnidx, int flags);
@defun tbx_index_load3(fn::Cstring, fnidx::Cstring, flags::Cint)::Ptr{tbx_t}

# const char **tbx_seqnames(tbx_t *tbx, int *n);
@defun tbx_seqnames(tbx::Ref{tbx_t}, n::Ref{Cint})::Ptr{Cstring}

# void tbx_destroy(tbx_t *tbx);
@defun tbx_destroy(tbx::Ref{tbx_t})::Cvoid

