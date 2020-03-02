# Constants
# =========

const HTS_FMT_CSI  = Cint(0)
const HTS_FMT_BAI  = Cint(1)
const HTS_FMT_TBI  = Cint(2)
const HTS_FMT_CRAI = Cint(3)

# CIGAR operations
const BAM_CMATCH     = Cint(0)
const BAM_CINS       = Cint(1)
const BAM_CDEL       = Cint(2)
const BAM_CREF_SKIP  = Cint(3)
const BAM_CSOFT_CLIP = Cint(4)
const BAM_CHARD_CLIP = Cint(5)
const BAM_CPAD       = Cint(6)
const BAM_CEQUAL     = Cint(7)
const BAM_CDIFF      = Cint(8)
const BAM_CBACK      = Cint(9)

const BAM_CIGAR_STR   = b"MIDNSHP=XB"
const _BAM_CIGAR_STA_PADDED = b"MIDNSHP=XB??????"  # padded for safe lookup
const BAM_CIGAR_SHIFT = Cint(4)
const BAM_CIGAR_MASK  = 0xf
const BAM_CIGAR_TYPE  = 0x3C1A7

const bam_cigar_table = [unsafe_load(cglobal((:bam_cigar_table, libhts), UInt8), i) for i in 1:256]

# Record flags
"The read is paired in sequencing, no matter whether it is mapped in a pair"
const BAM_FPAIRED        = UInt16(1 << 0)
"The read is mapped in a proper pair"
const BAM_FPROPER_PAIR   = UInt16(1 << 1)
"The read itself is unmapped; conflictive with `BAM_FPROPER_PAIR`"
const BAM_FUNMAP         = UInt16(1 << 2)
"The mate is unmapped"
const BAM_FMUNMAP        = UInt16(1 << 3)
"The read is mapped to the reverse strand"
const BAM_FREVERSE       = UInt16(1 << 4)
"The mate is mapped to the reverse strand"
const BAM_FMREVERSE      = UInt16(1 << 5)
"This is read1"
const BAM_FREAD1         = UInt16(1 << 6)
"This is read2"
const BAM_FREAD2         = UInt16(1 << 7)
"Not primary alignment"
const BAM_FSECONDARY     = UInt16(1 << 8)
"QC failure"
const BAM_FQCFAIL        = UInt16(1 << 9)
"Optical or PCR duplicate"
const BAM_FDUP           = UInt16(1 << 10)
"Supplementary alignment"
const BAM_FSUPPLEMENTARY = UInt16(1 << 11)

