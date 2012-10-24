#!/usr/bin/perl
## order.pl

use strict;
use warnings;

## get the first argument
my $string1 = shift;

## get the second argument
my $string2 = shift;

## check that $string1 is "less than or equal" $string2 (already ordered)
if ($string1 le $string2) {
  print "right order\n";
}
## otherwise $string1 is "more than" $string2
else {
  print "wrong order\n";
}
