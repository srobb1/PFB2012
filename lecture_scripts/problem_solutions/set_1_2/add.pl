#!/usr/bin/perl
## add.pl

use strict;
use warnings;

##first value - get it from the command line arguments
my $value1 = shift;

## second value - get it from the command line arguments
my $value2 = shift;

## add the two numbers
my $sum = $value1 + $value2;

## print the sum of the two numbers
print $sum, "\n";
