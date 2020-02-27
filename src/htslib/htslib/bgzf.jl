# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# BGZF* bgzf_dopen(int fd, const char *mode);
@defun bgzf_dopen(fd::Cint, mode::Cstring)::Ptr{BGZF}

# BGZF* bgzf_open(const char* path, const char *mode);
@defun bgzf_open(path::Cstring, mode::Cstring)::Ptr{BGZF}

# BGZF* bgzf_hopen(struct hFILE *fp, const char *mode);
@defun bgzf_hopen(fp::Ref{hFILE}, mode::Cstring)::Ptr{BGZF}

# int bgzf_close(BGZF *fp);
@defun bgzf_close(fp::Ref{BGZF})::Cint

# ssize_t bgzf_read(BGZF *fp, void *data, size_t length) HTS_RESULT_USED;
@defun bgzf_read(fp::Ref{BGZF}, data::Ref{Cvoid}, length::Csize_t)::Cssize_t

# ssize_t bgzf_write(BGZF *fp, const void *data, size_t length) HTS_RESULT_USED;
@defun bgzf_write(fp::Ref{BGZF}, data::Ref{Cvoid}, length::Csize_t)::Cssize_t

# ssize_t bgzf_block_write(BGZF *fp, const void *data, size_t length);
@defun bgzf_block_write(fp::Ref{BGZF}, data::Ref{Cvoid}, length::Csize_t)::Cssize_t

# int bgzf_peek(BGZF *fp);
@defun bgzf_peek(fp::Ref{BGZF})::Cint

# ssize_t bgzf_raw_read(BGZF *fp, void *data, size_t length) HTS_RESULT_USED;
@defun bgzf_raw_read(fp::Ref{BGZF}, data::Ref{Cvoid}, length::Csize_t)::Cssize_t

# ssize_t bgzf_raw_write(BGZF *fp, const void *data, size_t length) HTS_RESULT_USED;
@defun bgzf_raw_write(fp::Ref{BGZF}, data::Ref{Cvoid}, length::Csize_t)::Cssize_t

# int bgzf_flush(BGZF *fp) HTS_RESULT_USED;
@defun bgzf_flush(fp::Ref{BGZF})::Cint

# int64_t bgzf_seek(BGZF *fp, int64_t pos, int whence) HTS_RESULT_USED;
@defun bgzf_seek(fp::Ref{BGZF}, pos::Int64, whence::Cint)::Int64

# int bgzf_check_EOF(BGZF *fp);
@defun bgzf_check_EOF(fp::Ref{BGZF})::Cint

# int bgzf_compression(BGZF *fp);
@defun bgzf_compression(fp::Ref{BGZF})::Cint

# int bgzf_is_bgzf(const char *fn) HTS_DEPRECATED("Use bgzf_compression() or hts_detect_format() instead");
@defun bgzf_is_bgzf(fn::Cstring)::Cint

# void bgzf_set_cache_size(BGZF *fp, int size);
@defun bgzf_set_cache_size(fp::Ref{BGZF}, size::Cint)::Cvoid

# int bgzf_flush_try(BGZF *fp, ssize_t size) HTS_RESULT_USED;
@defun bgzf_flush_try(fp::Ref{BGZF}, size::Cssize_t)::Cint

# int bgzf_getc(BGZF *fp);
@defun bgzf_getc(fp::Ref{BGZF})::Cint

# int bgzf_getline(BGZF *fp, int delim, struct kstring_t *str);
@defun bgzf_getline(fp::Ref{BGZF}, delim::Cint, str::Ref{kstring_t})::Cint

# int bgzf_read_block(BGZF *fp) HTS_RESULT_USED;
@defun bgzf_read_block(fp::Ref{BGZF})::Cint

# int bgzf_thread_pool(BGZF *fp, struct hts_tpool *pool, int qsize);
@defun bgzf_thread_pool(fp::Ref{BGZF}, pool::Ref{hts_tpool}, qsize::Cint)::Cint

# int bgzf_mt(BGZF *fp, int n_threads, int n_sub_blks);
@defun bgzf_mt(fp::Ref{BGZF}, n_threads::Cint, n_sub_blks::Cint)::Cint

# int bgzf_compress(void *dst, size_t *dlen, const void *src, size_t slen, int level);
@defun bgzf_compress(dst::Ref{Cvoid}, dlen::Ref{Csize_t}, src::Ref{Cvoid}, slen::Csize_t, level::Cint)::Cint

# int bgzf_useek(BGZF *fp, off_t uoffset, int where) HTS_RESULT_USED;
@defun bgzf_useek(fp::Ref{BGZF}, uoffset::Coff_t, where::Cint)::Cint

# off_t bgzf_utell(BGZF *fp);
@defun bgzf_utell(fp::Ref{BGZF})::Coff_t

# int bgzf_index_build_init(BGZF *fp);
@defun bgzf_index_build_init(fp::Ref{BGZF})::Cint

# int bgzf_index_load(BGZF *fp, const char *bname, const char *suffix) HTS_RESULT_USED;
@defun bgzf_index_load(fp::Ref{BGZF}, bname::Cstring, suffix::Cstring)::Cint

# int bgzf_index_load_hfile(BGZF *fp, struct hFILE *idx, const char *name) HTS_RESULT_USED;
@defun bgzf_index_load_hfile(fp::Ref{BGZF}, idx::Ref{hFILE}, name::Cstring)::Cint

# int bgzf_index_dump(BGZF *fp, const char *bname, const char *suffix) HTS_RESULT_USED;
@defun bgzf_index_dump(fp::Ref{BGZF}, bname::Cstring, suffix::Cstring)::Cint

# int bgzf_index_dump_hfile(BGZF *fp, struct hFILE *idx, const char *name) HTS_RESULT_USED;
@defun bgzf_index_dump_hfile(fp::Ref{BGZF}, idx::Ref{hFILE}, name::Cstring)::Cint

