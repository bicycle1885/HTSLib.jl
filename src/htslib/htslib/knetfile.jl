# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# knetFile *knet_open(const char *fn, const char *mode);
@defun knet_open(fn::Cstring, mode::Cstring)::Ptr{knetFile}

# knetFile *knet_dopen(int fd, const char *mode);
@defun knet_dopen(fd::Cint, mode::Cstring)::Ptr{knetFile}

# ssize_t knet_read(knetFile *fp, void *buf, size_t len);
@defun knet_read(fp::Ref{knetFile}, buf::Ref{Cvoid}, len::Csize_t)::Cssize_t

# off_t knet_seek(knetFile *fp, off_t off, int whence);
@defun knet_seek(fp::Ref{knetFile}, off::Coff_t, whence::Cint)::Coff_t

# int knet_close(knetFile *fp);
@defun knet_close(fp::Ref{knetFile})::Cint

