#!/usr/bin/perl
## reverse_complement.pl

use strict;
use warnings;

## make SequenceUtilities module available to our program
use SequenceUtilities;

## get the sequence from the arguments to the program
my $input_sequence = shift;

## call the reverse_complement subroutine from the SequenceUtilities module
## and assign the returned value from the subroutine to a new variable
my $reverse_complement_input_sequence = reverse_complement($input_sequence);

## print the reverse complement
print "$reverse_complement_input_sequence\n";
