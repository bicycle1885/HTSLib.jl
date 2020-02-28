# NOTE: This file contains machine-generated code by translate_exported_functions.jl.

# int regidx_parse_bed(const char*,char**,char**,hts_pos_t*,hts_pos_t*,void*,void*);
# ErrorException("found unnamed argument(s)")

# int regidx_parse_tab(const char*,char**,char**,hts_pos_t*,hts_pos_t*,void*,void*);
# ErrorException("found unnamed argument(s)")

# int regidx_parse_reg(const char*,char**,char**,hts_pos_t*,hts_pos_t*,void*,void*);
# ErrorException("found unnamed argument(s)")

# int regidx_parse_vcf(const char*,char**,char**,hts_pos_t*,hts_pos_t*,void*,void*);
# ErrorException("found unnamed argument(s)")

# regidx_t *regidx_init(const char *fname, regidx_parse_f parsef, regidx_free_f freef, size_t payload_size, void *usr);
@defun regidx_init(fname::Cstring, parsef::regidx_parse_f, freef::regidx_free_f, payload_size::Csize_t, usr::Ptr{Cvoid})::Ptr{regidx_t}

# regidx_t *regidx_init_string(const char *string, regidx_parse_f parsef, regidx_free_f freef, size_t payload_size, void *usr);
@defun regidx_init_string(string::Cstring, parsef::regidx_parse_f, freef::regidx_free_f, payload_size::Csize_t, usr::Ptr{Cvoid})::Ptr{regidx_t}

# void regidx_destroy(regidx_t *idx);
@defun regidx_destroy(idx::Ptr{regidx_t})::Cvoid

# int regidx_overlap(regidx_t *idx, const char *chr, hts_pos_t beg, hts_pos_t end, regitr_t *itr);
@defun regidx_overlap(idx::Ptr{regidx_t}, chr::Cstring, beg::hts_pos_t, end_::hts_pos_t, itr::Ptr{regitr_t})::Cint

# int regidx_insert(regidx_t *idx, char *line);
@defun regidx_insert(idx::Ptr{regidx_t}, line::Ptr{Cchar})::Cint

# int regidx_insert_list(regidx_t *idx, char *line, char delim);
@defun regidx_insert_list(idx::Ptr{regidx_t}, line::Ptr{Cchar}, delim::Cchar)::Cint

# int regidx_push(regidx_t *idx, char *chr_beg, char *chr_end, hts_pos_t beg, hts_pos_t end, void *payload);
@defun regidx_push(idx::Ptr{regidx_t}, chr_beg::Ptr{Cchar}, chr_end::Ptr{Cchar}, beg::hts_pos_t, end_::hts_pos_t, payload::Ptr{Cvoid})::Cint

# char **regidx_seq_names(regidx_t *idx, int *n);
@defun regidx_seq_names(idx::Ptr{regidx_t}, n::Ptr{Cint})::Ptr{Ptr{Cchar}}

# int regidx_seq_nregs(regidx_t *idx, const char *seq);
@defun regidx_seq_nregs(idx::Ptr{regidx_t}, seq::Cstring)::Cint

# int regidx_nregs(regidx_t *idx);
@defun regidx_nregs(idx::Ptr{regidx_t})::Cint

# regitr_t *regitr_init(regidx_t *idx);
@defun regitr_init(idx::Ptr{regidx_t})::Ptr{regitr_t}

# void regitr_destroy(regitr_t *itr);
@defun regitr_destroy(itr::Ptr{regitr_t})::Cvoid

# void regitr_reset(regidx_t *idx, regitr_t *itr);
@defun regitr_reset(idx::Ptr{regidx_t}, itr::Ptr{regitr_t})::Cvoid

# int regitr_overlap(regitr_t *itr);
@defun regitr_overlap(itr::Ptr{regitr_t})::Cint

# int regitr_loop(regitr_t *itr);
@defun regitr_loop(itr::Ptr{regitr_t})::Cint

# void regitr_copy(regitr_t *dst, regitr_t *src);
@defun regitr_copy(dst::Ptr{regitr_t}, src::Ptr{regitr_t})::Cvoid

