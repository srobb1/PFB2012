#!/usr/bin/perl
## same.pl

use strict;
use warnings;

## prompt user for the first string
print "Enter string 1: ";
## get the first string from the user input
my $string1 = <>;

## prompt user for the second string
print "Enter string 2: ";
## get the second string from the user input
my $string2 = <>;

## make both $string1 and $string2 lower case so that the comparison is
## case insensitive
my $lower_case_string1 = lc $string1;
my $lower_case_string2 = lc $string2;

## check to see if $lower_case_string1 and $lower_case_string2 are "equal"
if ($lower_case_string1 eq $lower_case_string2) {
  print "same\n";
}
## otherwise they're different
else {
  print "different\n";
}
