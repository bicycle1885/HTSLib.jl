# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# hFILE *hopen(const char *filename, const char *mode, ...) HTS_RESULT_USED;
# ErrorException("unknown token: '.'")

# hFILE *hdopen(int fd, const char *mode) HTS_RESULT_USED;
@defun hdopen(fd::Cint, mode::Cstring)::Ptr{hFILE}

# int hisremote(const char *filename) HTS_RESULT_USED;
@defun hisremote(filename::Cstring)::Cint

# char *haddextension(struct kstring_t *buffer, const char *filename, int replace, const char *extension) HTS_RESULT_USED;
@defun haddextension(buffer::Ptr{kstring_t}, filename::Cstring, replace::Cint, extension::Cstring)::Ptr{Cchar}

# int hclose(hFILE *fp) HTS_RESULT_USED;
@defun hclose(fp::Ptr{hFILE})::Cint

# void hclose_abruptly(hFILE *fp);
@defun hclose_abruptly(fp::Ptr{hFILE})::Cvoid

# off_t hseek(hFILE *fp, off_t offset, int whence) HTS_RESULT_USED;
@defun hseek(fp::Ptr{hFILE}, offset::Coff_t, whence::Cint)::Coff_t

# ssize_t hgetdelim(char *buffer, size_t size, int delim, hFILE *fp) HTS_RESULT_USED;
@defun hgetdelim(buffer::Ptr{Cchar}, size::Csize_t, delim::Cint, fp::Ptr{hFILE})::Cssize_t

# char *hgets(char *buffer, int size, hFILE *fp) HTS_RESULT_USED;
@defun hgets(buffer::Ptr{Cchar}, size::Cint, fp::Ptr{hFILE})::Ptr{Cchar}

# ssize_t hpeek(hFILE *fp, void *buffer, size_t nbytes) HTS_RESULT_USED;
@defun hpeek(fp::Ptr{hFILE}, buffer::Ptr{Cvoid}, nbytes::Csize_t)::Cssize_t

# int hflush(hFILE *fp) HTS_RESULT_USED;
@defun hflush(fp::Ptr{hFILE})::Cint

# char *hfile_mem_get_buffer(hFILE *file, size_t *length);
@defun hfile_mem_get_buffer(file::Ptr{hFILE}, length::Ptr{Csize_t})::Ptr{Cchar}

# char *hfile_mem_steal_buffer(hFILE *file, size_t *length);
@defun hfile_mem_steal_buffer(file::Ptr{hFILE}, length::Ptr{Csize_t})::Ptr{Cchar}

