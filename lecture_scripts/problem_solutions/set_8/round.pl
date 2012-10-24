#!/usr/bin/perl
## round.pl

use strict;
use warnings;

## we need to make the Math::Round module available to our script
use Math::Round;

## get a number argument from the command line
my $number = shift;

## call the round() subrotine to round the number
my $rounded_number = round($number);

## print the rounded number
print "$rounded_number\n";
