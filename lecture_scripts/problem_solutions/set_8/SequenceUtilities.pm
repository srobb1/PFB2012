package SequenceUtilities;
## SequenceUtilities.pm
## This module contains a number of useful subroutines for sequence
## manipulation -- at this point it only contains reverse_complement

use strict;
use warnings;

## make Exporter available so that we can export subroutines
use base "Exporter";

## add to the @EXPORT array the name of the subroutine
## you'll often see people use qw() which just creates a list
## where each element is treated as a string -- "quote word == qw"
our @EXPORT = qw(reverse_complement);

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

## we need to end our module with "1;"
1;
