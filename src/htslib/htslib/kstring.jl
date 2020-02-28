# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# int kvsprintf(kstring_t *s, const char *fmt, va_list ap) KS_ATTR_PRINTF(2,0);
@defun kvsprintf(s::Ptr{kstring_t}, fmt::Cstring, ap::va_list)::Cint

# int ksprintf(kstring_t *s, const char *fmt, ...) KS_ATTR_PRINTF(2,3);
# ErrorException("unknown token: '.'")

# int kputd(double d, kstring_t *s);
@defun kputd(d::Cdouble, s::Ptr{kstring_t})::Cint

# int ksplit_core(char *s, int delimiter, int *_max, int **_offsets);
@defun ksplit_core(s::Ptr{Cchar}, delimiter::Cint, _max::Ptr{Cint}, _offsets::Ptr{Ptr{Cint}})::Cint

# char *kstrstr(const char *str, const char *pat, int **_prep);
@defun kstrstr(str::Cstring, pat::Cstring, _prep::Ptr{Ptr{Cint}})::Ptr{Cchar}

# char *kstrnstr(const char *str, const char *pat, int n, int **_prep);
@defun kstrnstr(str::Cstring, pat::Cstring, n::Cint, _prep::Ptr{Ptr{Cint}})::Ptr{Cchar}

# void *kmemmem(const void *_str, int n, const void *_pat, int m, int **_prep);
@defun kmemmem(_str::Ptr{Cvoid}, n::Cint, _pat::Ptr{Cvoid}, m::Cint, _prep::Ptr{Ptr{Cint}})::Ptr{Cvoid}

# char *kstrtok(const char *str, const char *sep, ks_tokaux_t *aux);
@defun kstrtok(str::Cstring, sep::Cstring, aux::Ptr{ks_tokaux_t})::Ptr{Cchar}

# int kgetline(kstring_t *s, kgets_func *fgets, void *fp);
@defun kgetline(s::Ptr{kstring_t}, fgets::Ptr{kgets_func}, fp::Ptr{Cvoid})::Cint

# int kgetline2(kstring_t *s, kgets_func2 *fgets, void *fp);
@defun kgetline2(s::Ptr{kstring_t}, fgets::Ptr{kgets_func2}, fp::Ptr{Cvoid})::Cint

