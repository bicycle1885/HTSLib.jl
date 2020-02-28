# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# sam_hdr_t *cram_fd_get_header(cram_fd *fd);
@defun cram_fd_get_header(fd::Ptr{cram_fd})::Ptr{sam_hdr_t}

# void cram_fd_set_header(cram_fd *fd, sam_hdr_t *hdr);
@defun cram_fd_set_header(fd::Ptr{cram_fd}, hdr::Ptr{sam_hdr_t})::Cvoid

# int cram_fd_get_version(cram_fd *fd);
@defun cram_fd_get_version(fd::Ptr{cram_fd})::Cint

# void cram_fd_set_version(cram_fd *fd, int vers);
@defun cram_fd_set_version(fd::Ptr{cram_fd}, vers::Cint)::Cvoid

# int cram_major_vers(cram_fd *fd);
@defun cram_major_vers(fd::Ptr{cram_fd})::Cint

# int cram_minor_vers(cram_fd *fd);
@defun cram_minor_vers(fd::Ptr{cram_fd})::Cint

# struct hFILE *cram_fd_get_fp(cram_fd *fd);
@defun cram_fd_get_fp(fd::Ptr{cram_fd})::Ptr{hFILE}

# void cram_fd_set_fp(cram_fd *fd, struct hFILE *fp);
@defun cram_fd_set_fp(fd::Ptr{cram_fd}, fp::Ptr{hFILE})::Cvoid

# int32_t cram_container_get_length(cram_container *c);
@defun cram_container_get_length(c::Ptr{cram_container})::Int32

# void cram_container_set_length(cram_container *c, int32_t length);
@defun cram_container_set_length(c::Ptr{cram_container}, length::Int32)::Cvoid

# int32_t cram_container_get_num_blocks(cram_container *c);
@defun cram_container_get_num_blocks(c::Ptr{cram_container})::Int32

# void cram_container_set_num_blocks(cram_container *c, int32_t num_blocks);
@defun cram_container_set_num_blocks(c::Ptr{cram_container}, num_blocks::Int32)::Cvoid

# int32_t *cram_container_get_landmarks(cram_container *c, int32_t *num_landmarks);
@defun cram_container_get_landmarks(c::Ptr{cram_container}, num_landmarks::Ptr{Int32})::Ptr{Int32}

# void cram_container_set_landmarks(cram_container *c, int32_t num_landmarks, int32_t *landmarks);
@defun cram_container_set_landmarks(c::Ptr{cram_container}, num_landmarks::Int32, landmarks::Ptr{Int32})::Cvoid

# int cram_container_is_empty(cram_fd *fd);
@defun cram_container_is_empty(fd::Ptr{cram_fd})::Cint

# int32_t cram_block_get_content_id(cram_block *b);
@defun cram_block_get_content_id(b::Ptr{cram_block})::Int32

# int32_t cram_block_get_comp_size(cram_block *b);
@defun cram_block_get_comp_size(b::Ptr{cram_block})::Int32

# int32_t cram_block_get_uncomp_size(cram_block *b);
@defun cram_block_get_uncomp_size(b::Ptr{cram_block})::Int32

# int32_t cram_block_get_crc32(cram_block *b);
@defun cram_block_get_crc32(b::Ptr{cram_block})::Int32

# void * cram_block_get_data(cram_block *b);
@defun cram_block_get_data(b::Ptr{cram_block})::Ptr{Cvoid}

# enum cram_content_type cram_block_get_content_type(cram_block *b);
@defun cram_block_get_content_type(b::Ptr{cram_block})::cram_content_type

# void cram_block_set_content_id(cram_block *b, int32_t id);
@defun cram_block_set_content_id(b::Ptr{cram_block}, id::Int32)::Cvoid

# void cram_block_set_comp_size(cram_block *b, int32_t size);
@defun cram_block_set_comp_size(b::Ptr{cram_block}, size::Int32)::Cvoid

# void cram_block_set_uncomp_size(cram_block *b, int32_t size);
@defun cram_block_set_uncomp_size(b::Ptr{cram_block}, size::Int32)::Cvoid

# void cram_block_set_crc32(cram_block *b, int32_t crc);
@defun cram_block_set_crc32(b::Ptr{cram_block}, crc::Int32)::Cvoid

# void cram_block_set_data(cram_block *b, void *data);
@defun cram_block_set_data(b::Ptr{cram_block}, data::Ptr{Cvoid})::Cvoid

# int cram_block_append(cram_block *b, const void *data, int size);
@defun cram_block_append(b::Ptr{cram_block}, data::Ptr{Cvoid}, size::Cint)::Cint

# void cram_block_update_size(cram_block *b);
@defun cram_block_update_size(b::Ptr{cram_block})::Cvoid

# size_t cram_block_get_offset(cram_block *b);
@defun cram_block_get_offset(b::Ptr{cram_block})::Csize_t

# void cram_block_set_offset(cram_block *b, size_t offset);
@defun cram_block_set_offset(b::Ptr{cram_block}, offset::Csize_t)::Cvoid

# uint32_t cram_block_size(cram_block *b);
@defun cram_block_size(b::Ptr{cram_block})::UInt32

# int cram_transcode_rg(cram_fd *in, cram_fd *out, cram_container *c, int nrg, int *in_rg, int *out_rg);
@defun cram_transcode_rg(in::Ptr{cram_fd}, out::Ptr{cram_fd}, c::Ptr{cram_container}, nrg::Cint, in_rg::Ptr{Cint}, out_rg::Ptr{Cint})::Cint

# int cram_copy_slice(cram_fd *in, cram_fd *out, int32_t num_slice);
@defun cram_copy_slice(in::Ptr{cram_fd}, out::Ptr{cram_fd}, num_slice::Int32)::Cint

# cram_block *cram_new_block(enum cram_content_type content_type, int content_id);
@defun cram_new_block(content_type::cram_content_type, content_id::Cint)::Ptr{cram_block}

# cram_block *cram_read_block(cram_fd *fd);
@defun cram_read_block(fd::Ptr{cram_fd})::Ptr{cram_block}

# int cram_write_block(cram_fd *fd, cram_block *b);
@defun cram_write_block(fd::Ptr{cram_fd}, b::Ptr{cram_block})::Cint

# void cram_free_block(cram_block *b);
@defun cram_free_block(b::Ptr{cram_block})::Cvoid

# int cram_uncompress_block(cram_block *b);
@defun cram_uncompress_block(b::Ptr{cram_block})::Cint

# int cram_compress_block(cram_fd *fd, cram_block *b, cram_metrics *metrics, int method, int level);
@defun cram_compress_block(fd::Ptr{cram_fd}, b::Ptr{cram_block}, metrics::Ptr{cram_metrics}, method::Cint, level::Cint)::Cint

# cram_container *cram_new_container(int nrec, int nslice);
@defun cram_new_container(nrec::Cint, nslice::Cint)::Ptr{cram_container}

# void cram_free_container(cram_container *c);
@defun cram_free_container(c::Ptr{cram_container})::Cvoid

# cram_container *cram_read_container(cram_fd *fd);
@defun cram_read_container(fd::Ptr{cram_fd})::Ptr{cram_container}

# int cram_write_container(cram_fd *fd, cram_container *h);
@defun cram_write_container(fd::Ptr{cram_fd}, h::Ptr{cram_container})::Cint

# int cram_store_container(cram_fd *fd, cram_container *c, char *dat, int *size);
@defun cram_store_container(fd::Ptr{cram_fd}, c::Ptr{cram_container}, dat::Ptr{Cchar}, size::Ptr{Cint})::Cint

# int cram_container_size(cram_container *c);
@defun cram_container_size(c::Ptr{cram_container})::Cint

# cram_fd *cram_open(const char *filename, const char *mode);
@defun cram_open(filename::Cstring, mode::Cstring)::Ptr{cram_fd}

# cram_fd *cram_dopen(struct hFILE *fp, const char *filename, const char *mode);
@defun cram_dopen(fp::Ptr{hFILE}, filename::Cstring, mode::Cstring)::Ptr{cram_fd}

# int cram_close(cram_fd *fd);
@defun cram_close(fd::Ptr{cram_fd})::Cint

# int cram_seek(cram_fd *fd, off_t offset, int whence);
@defun cram_seek(fd::Ptr{cram_fd}, offset::Coff_t, whence::Cint)::Cint

# int cram_flush(cram_fd *fd);
@defun cram_flush(fd::Ptr{cram_fd})::Cint

# int cram_eof(cram_fd *fd);
@defun cram_eof(fd::Ptr{cram_fd})::Cint

# int cram_set_option(cram_fd *fd, enum hts_fmt_option opt, ...);
# ErrorException("unknown token: '.'")

# int cram_set_voption(cram_fd *fd, enum hts_fmt_option opt, va_list args);
@defun cram_set_voption(fd::Ptr{cram_fd}, opt::hts_fmt_option, args::va_list)::Cint

# int cram_set_header(cram_fd *fd, sam_hdr_t *hdr);
@defun cram_set_header(fd::Ptr{cram_fd}, hdr::Ptr{sam_hdr_t})::Cint

# int cram_check_EOF(cram_fd *fd);
@defun cram_check_EOF(fd::Ptr{cram_fd})::Cint

# int int32_put_blk(cram_block *b, int32_t val);
@defun int32_put_blk(b::Ptr{cram_block}, val::Int32)::Cint

# refs_t *cram_get_refs(htsFile *fd);
@defun cram_get_refs(fd::Ptr{htsFile})::Ptr{refs_t}

