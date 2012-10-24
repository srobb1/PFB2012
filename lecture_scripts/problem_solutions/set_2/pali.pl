#!/usr/bin/perl
## pali.pl

use strict;
use warnings;

## get the string argument
my $string = shift;

## lowercase $string so that comparisons are case insensitive
my $lower_case_string = lc $string;

## remove whitespace from the string
## we want to apply the substitution globally to remove ALL occurences
## since s/// works on the string itself, we'll first make a copy
my $lower_case_clean_string = $lower_case_string;
## we can use s/// to remove the whitespace
$lower_case_clean_string =~ s/\s//g;
## we can remove all non alphanumerical characters
$lower_case_clean_string =~ s/\W//g;

## get the reverse of the string
my $reverse_lower_case_clean_string = reverse $lower_case_clean_string;

## check that forward and reverse strings are the same - if they're the same, we have a palindrome
if ($lower_case_clean_string eq $reverse_lower_case_clean_string) {
  print "yes!\n";
}
## otherwise the strings aren't the same
else {
  print "no!\n";
}
 
