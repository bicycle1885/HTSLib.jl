# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# int kvsprintf(kstring_t *s, const char *fmt, va_list ap) KS_ATTR_PRINTF(2,0);
@defun kvsprintf(s::Ref{kstring_t}, fmt::Cstring, ap::va_list)::Cint

# int ksprintf(kstring_t *s, const char *fmt, ...) KS_ATTR_PRINTF(2,3);
# ErrorException("unknown token: '.'")

# int kputd(double d, kstring_t *s);
@defun kputd(d::Cdouble, s::Ref{kstring_t})::Cint

# int ksplit_core(char *s, int delimiter, int *_max, int **_offsets);
@defun ksplit_core(s::Ref{Cchar}, delimiter::Cint, _max::Ref{Cint}, _offsets::Ref{Ref{Cint}})::Cint

# char *kstrstr(const char *str, const char *pat, int **_prep);
@defun kstrstr(str::Cstring, pat::Cstring, _prep::Ref{Ref{Cint}})::Ptr{Cchar}

# char *kstrnstr(const char *str, const char *pat, int n, int **_prep);
@defun kstrnstr(str::Cstring, pat::Cstring, n::Cint, _prep::Ref{Ref{Cint}})::Ptr{Cchar}

# void *kmemmem(const void *_str, int n, const void *_pat, int m, int **_prep);
@defun kmemmem(_str::Ref{Cvoid}, n::Cint, _pat::Ref{Cvoid}, m::Cint, _prep::Ref{Ref{Cint}})::Ptr{Cvoid}

# char *kstrtok(const char *str, const char *sep, ks_tokaux_t *aux);
@defun kstrtok(str::Cstring, sep::Cstring, aux::Ref{ks_tokaux_t})::Ptr{Cchar}

# int kgetline(kstring_t *s, kgets_func *fgets, void *fp);
@defun kgetline(s::Ref{kstring_t}, fgets::Ref{kgets_func}, fp::Ref{Cvoid})::Cint

# int kgetline2(kstring_t *s, kgets_func2 *fgets, void *fp);
@defun kgetline2(s::Ref{kstring_t}, fgets::Ref{kgets_func2}, fp::Ref{Cvoid})::Cint

