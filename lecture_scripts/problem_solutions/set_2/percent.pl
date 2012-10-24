#!/usr/bin/perl
## percent.pl

use strict;
use warnings;

## get the first number argument
my $number1 = shift;

## get the second number argument
my $number2 = shift;

## check that the sum of the two numbers does not equal to 0
if ($number1 + $number2 != 0) {
  ## calculate the percentage
  my $percentage = $number1 / ($number1 + $number2) * 100;
  ## use printf to print a nicely formatted percentage
  printf "%.2f%%\n", $percentage;
}
## otherwise the sum equals to 0
else {
  print "You are trying to trick me!\n";
}
