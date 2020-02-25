module HTSLib

using htslib_jll: libhts

# Low-level API
# -------------

hts_version() = ccall((:hts_version, libhts), Cstring, ())


# High-level API
# --------------

const HTSLIB_VERSION = unsafe_string(hts_version())

"""
    version()

Return the version string of HTSlib.
"""
version() = HTSLIB_VERSION

end # module
