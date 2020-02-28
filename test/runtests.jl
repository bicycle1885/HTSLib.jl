using HTSLib
using HTSLib: htslib  # low-level API module
using Test

# Low-level API
# -------------

@testset "Low-level API" begin
    # check struct size (these sizes are derived from C's sizeof operator)
    if Sys.isunix() && Sys.ARCH == :x86_64  # LP64
        @test sizeof(htslib.kstring_t) == 24
        @test sizeof(htslib.htsFormat) == 32
        @test sizeof(htslib.htsFile) == 128
        @test sizeof(htslib.bam1_core_t) == 48
        @test sizeof(htslib.bam1_t) == 80
    end
end

# High-level API
# --------------

@testset "High-level API" begin
    @test HTSLib.HTSLIB_VERSION == "1.10.2"
end
