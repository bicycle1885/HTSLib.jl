module HTSLib

include("htslib/htslib.jl")

"""
The version string of htslib.
"""
const HTSLIB_VERSION = unsafe_string(htslib.hts_version())

end # module
