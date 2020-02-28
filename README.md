# HTSLib.jl

[![Build Status](https://travis-ci.com/bicycle1885/HTSLib.jl.svg?branch=master)](https://travis-ci.com/bicycle1885/HTSLib.jl)
[![Codecov](https://codecov.io/gh/bicycle1885/HTSLib.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/bicycle1885/HTSLib.jl)

- **NOTE: This package is still pre-alpha in development and should not be used before official release.**
- **NOTE: The following overview states the goal of this pakcage; many features are not implemented yet.**

## Overview

A Julia package for high-throughput sequencing (HTS) data formats.

This package offers funcionality of [htslib](https://www.htslib.org/), which
is a C library for reading and writing HTS data formats and is commonly used as
a backend library in many bioinformatics tools such as samtools and bcftools to
name a few. SAM, BAM, CRAM, VCF and BCF files can be processed using the library.

HTSLib.jl comes with two levels of API:

- **Low-level API**
    offers direct bindings for htslib. Almost all of the functions and types
    have one-to-one correspondance with the same arguments and the return
    value. If you are already familiar with the API of htslib or want finer
    control of data processing, this API would be helpful. However, you will
    need to do pointer handling, error check, and memory management yourself.

- **High-level API**
    offers abstract (i.e. high-level) operations in the Julian way. This API is
    built on top of the low-level API; however, it exploits more advanced
    features of Julia such as multiple dispatching, iterator, garbage
    collection, and so on. Most users are recommended to use this API instead
    of the low-level one because it is simpler and more concise.

The low-level API is the `HTSLib.htslib` module while the high-level API is the
`HTSLib` module itself.
```julia
# Import the low-level API.
using HTSLib: htslib

# Import the high-level API.
using HTSLib
```

## Examples

See the [`examples`](/examples) directory.
