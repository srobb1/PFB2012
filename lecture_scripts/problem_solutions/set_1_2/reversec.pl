#!/usr/bin/perl
## reversec.pl

use strict;
use warnings;

## get the sequence from the arguments
my $sequence = shift;

## reverse the sequence
my $reverse_sequence = reverse $sequence;

## complement the reverse sequence
## tr/// modifies the content of the string directly so we'll first make a copy
my $reverse_complement_sequence = $reverse_sequence;
## now complement the reverse sequence
$reverse_complement_sequence =~ tr/ACGT/TGCA/;

## print the reverse complemented sequence
print "output: $reverse_complement_sequence\n";
