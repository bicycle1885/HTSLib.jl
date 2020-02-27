using HTSLib
using HTSLib: htslib  # low-level API module
using Test

# Low-level API
# -------------

@testset "Low-level API" begin
    # check struct size (these sizes are derived from C's sizeof operator)
    @test sizeof(htslib.bam1_core_t) == 48
    @test sizeof(htslib.bam1_t) == 72 + sizeof(Ptr)
end

# High-level API
# --------------

@testset "High-level API" begin
    @test HTSLib.HTSLIB_VERSION == "1.10.2"
end
