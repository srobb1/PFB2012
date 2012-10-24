#!/usr/bin/perl
## reverse_complement.pl

use strict;
use warnings;

## get the sequence from the arguments to the program
my $input_sequence = shift;

## call the reverse_complement subroutine and assign the returned value
## from the subroutine to a new variable
my $reverse_complement_input_sequence = reverse_complement($input_sequence);

## print the reverse complement
print "$reverse_complement_input_sequence\n";


## subroutines ##

## this will take a sequence string as an argument and
## return the reverse complement
sub reverse_complement {

  ## get the sequence argument for the subroutine
  ## just like we can call "shift" to get an argument for the program
  ## we can call shift to get an argument to the subroutine
  my $sequence = shift;

  ## reverse the sequence
  my $reverse_sequence = reverse $sequence;

  ## create a copy of the reversed string which will become the complement
  my $reverse_complement_sequence = $reverse_sequence;

  ## complement the reverse string
  ## we can use tr/// to transliterate characters
  $reverse_complement_sequence =~ tr/ACGT/TGCA/;

  ## return the reverse complement
  ## code that calls this subroutine will be able to use this returned value
  return $reverse_complement_sequence;

}
