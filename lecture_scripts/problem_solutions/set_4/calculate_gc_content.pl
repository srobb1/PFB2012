#!/usr/bin/perl
## calculate_gc_content.pl

use strict;
use warnings;

## DNA sequence
my $sequence_string = "AGTTGTTACATGAAATCTGCAGTTTCATAATTTC";

## Turn a DNA string into an array with split()
## if we split on and empty string, we can put each character of the
## string into the array
my @sequence = split "", $sequence_string;

## total length of the sequence
my $length = 0;

## number of C's
my $number_of_c = 0;

## number of G's
my $number_of_g = 0;

## Use a foreach loop to look at each nucleotide in turn
foreach my $nucleotide (@sequence) {
  
  ## increment $length by one since we're accessing a nucleotide
  $length++;

  ## check if $nucleotide is a C
  if ($nucleotide eq "C") {

    ## increment $number_of_c
    $number_of_c++;

  }
  ## check if $nucleotide is a G
  elsif ($nucleotide eq "G") {

    ## increment $number_of_g
    $number_of_g++;
  }

}

## calculate GC content (g + c) / length * 100
my $gc_content = ($number_of_g + $number_of_c) / $length * 100;

printf "GC content: %.2f%%\n", $gc_content;
