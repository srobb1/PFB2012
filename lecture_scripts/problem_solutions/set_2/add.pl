#!/usr/bin/perl
## add.pl

use strict;
use warnings;

##first value - get it from the command line arguments
my $value1 = shift;

## second value - get it from the command line arguments
my $value2 = shift;

## check that both values are defined
if (not defined $value1 or not defined $value2) {
  print "Please provide two numbers.\n";
}
## check that both values are positive numbers
elsif ($value1 < 0 or $value2 < 0) {
  print "Please provide two positive numbers.\n";
}
## only run the rest of the program if the values are OK

else {

  ## add the two numbers
  my $sum = $value1 + $value2;

  ## print the sum of the two numbers
  print $sum, "\n";
}
