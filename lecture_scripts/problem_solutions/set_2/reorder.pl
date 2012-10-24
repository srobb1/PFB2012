#!/usr/bin/perl
## reorder.pl

use strict;
use warnings;

## get the first argument
my $string1 = shift;

## get the second argument
my $string2 = shift;

## if $string1 is "less than or equal" $string2 (already ordered)
if ($string1 le $string2) {
  print "$string1 $string2\n";
}
## otherwise $string1 is "more than" $string2 (swap them)
else {
  print "$string2 $string1\n";
}
