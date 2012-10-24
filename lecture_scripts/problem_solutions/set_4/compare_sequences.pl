#!/usr/bin/perl
## compare_sequences.pl

use strict;
use warnings;

## first sequence from sequence alignment
my $sequence1_string = "AGTTGTTACATGAAATCTGCAG--TTTCATAATTTCCGTGGGTCGGGCCGGGCGGGCCAGGCGCTGGGCACG---------";

## second sequence from sequence alignment
my $sequence2_string = "-GAAAAAACA-GAAGAGGGAAGGATACCAGA------GCGGTTCATACAGGGC---CCAGAAACTAGGCGAGGTGACCCCT";

## Turn each string into an array with split()
## if we split on and empty string, we can put each character of the
## string into the array
my @sequence1 = split "", $sequence1_string;
my @sequence2 = split "", $sequence2_string;

## Use a for loop to compare each index for nucleotide differences
## since both sequences are the same length (it's an alignment) we want
## want to use the same index to compare the array values
for (my $i = 0; $i < scalar(@sequence1); $i++) {

  ## get the nucleotide for each alignment at the given index
  my $nucleotide1 = $sequence1[$i];
  my $nucleotide2 = $sequence2[$i];

  ## check whether $nucleotide1 is different from $nucleotide2
  ## remember that nucleotides are strings, so we use "ne"
  if ($nucleotide1 ne $nucleotide2) {

    ## print the nucleotide position
    ## since indexes are 0-based, we'll add 1 to to the index to give
    ## a position that makes sense for people (1-based)
    print $i + 1, "\n";

  }

}
