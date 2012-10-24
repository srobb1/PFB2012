#!/usr/bin/perl
## shuffle_sequence.pl

use strict;
use warnings;

## DNA sequence
my $sequence = "AGTTGTTACATGAAATCTGCAGTTTCATAATTTC";

## turn DNA string into an array
## if we split on and empty string, we can put each character of the
## string into the array
my @nucleotides = split "", $sequence;

## use a for loop to run the loop N times (N = length of seq)
for (my $i = 0; $i < scalar(@nucleotides); $i++) {

  ## get two random positions using rand
  ## we want the random position to be <= the length of $sequence
  ## we can use the int function to get an integer to use as an index
  ## perldoc -f rand for more information on rand
  my $random_position_a = int(rand(scalar(@nucleotides)));
  my $random_position_b = int(rand(scalar(@nucleotides)));

  ## exchange the letters in the @nucleotides array
  ## you can do it in a single operation, but it might be conceptually
  ## easier to understand a 3 step approach where we use a temporary
  ## variable

  ## first take the base at $random_position_a and store to a temporary
  ## variable
  my $tmp_nucleotide = $nucleotides[$random_position_a];

  ## assign the nucleotide at $random_position_b to $random_position_a
  $nucleotides[$random_position_a] = $nucleotides[$random_position_b];

  ## assign the nucleotide at $random_position_b to $tmp_nucleotide
  $nucleotides[$random_position_b] = $tmp_nucleotide;
}

## put the shuffled nucleotides into a new sequence string
my $shuffled_sequence = join "", @nucleotides;

## print the shuffled sequence
print "$shuffled_sequence\n";
