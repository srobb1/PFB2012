#!/usr/bin/perl
## restriction_site.pl

use strict;
use warnings;

## sequence
my $sequence = "GAATTCAAGTTCTTGTGCGCACACAAATCCAATAAAAACTATTGTGCACACAGACGCGAC
TTCGCGGTCTCGCTTGTTCTTGTTGTATTCGTATTTTCATTTCTCGTTCTGTTTCTACTT
AACAATGTGGTGATAATATAAAAAATAAAGCAATTCAAAAGTGTATGACTTAATTAATGA
GCGATTTTTTTTTTGAAATCAAATTTTTGGAACATTTTTTTTAAATTCAAATTTTGGCGA
AAATTCAATATCGGTTCTACTATCCATAATATAATTCATCAGGAATACATCTTCAAAGGC
AAACGGTGACAACAAAATTCAGGCAATTCAGGCAAATACCGAATGACCAGCTTGGTTATC
AATTCTAGAATTTGTTTTTTGGTTTTTATTTATCATTGTAAATAAGACAAACATTTGTTC
CTAGTAAAGAATGTAACACCAGAAGTCACGTAAAATGGTGTCCCCATTGTTTAAACGGTT
GTTGGGACCAATGGAGTTCGTGGTAACAGTACATCTTTCCCCTTGAATTTGCCATTCAAA
ATTTGCGGTGGAATACCTAACAAATCCAGTGAATTTAAGAATTGCGATGGGTAATTGACA
TGAATTCCAAGGTCAAATGCTAAGAGATAGTTTAATTTATGTTTGAGACAATCAATTCCC
CAATTTTTCTAAGACTTCAATCAATCTCTTAGAATCCGCCTCTGGAGGTGCACTCAGCCG
CACGTCGGGCTCACCAAATATGTTGGGGTTGTCGGTGAACTCGAATAGAAATTATTGTCG
CCTCCATCTTCATGGCCGTGAAATCGGCTCGCTGACGGGCTTCTCGCGCTGGATTTTTTC
ACTATTTTTGAATACATCATTAACGCAATATATATATATATATATTTAT";

## R^AATTY is the restriction site for ApoI
## R can be either A or G
## Y can be either C or T
## we can using [] in the regular expression to have different characters
## grouping (R) and (ATTY) separately allows us to add characters between
## the two groupings
my $apoI_cutsite_regex = "([AG])(AATT[CT])";

## remove the newlines from $seq - since there are many, we'll use a global
## substitution
$sequence =~ s/\n//g;

## print all restriction sites in $seq

print "Restriction sites:\n";

## if we do a global search we can go through each match
while ($sequence =~ /$apoI_cutsite_regex/g) {

  ## the restriction site will be $1$2
  my $restriction_site = "$1$2";

  print "$restriction_site\n";

}

## add cuts to the sequence
## make a copy of the sequence
my $sequence_with_cuts = $sequence;

## "^" needs to go between $1 and $2 (our subpatterns) - we can use s/// to
## handle this globally
$sequence_with_cuts =~ s/$apoI_cutsite_regex/$1^$2/g;

## print $sequence_with_cuts
print "Sequence with cut sites:\n";
print "$sequence_with_cuts\n";

## $sequence_with_cuts has "^" at the cut sites - we can use that to split
## the string into an array of fragments
my @fragments = split /\^/, $sequence_with_cuts;

## we need to sort the array of fragments
## sorting should order sequences in reverse order by length
## since we want a reverse order, we want to compare $b and $a, rather than
## $a and $b
## we're comparing integers, so we need to use <=>
my @sorted_fragments = sort { length($b) <=> length($a) } @fragments;

## print fragments along with their lengths
print "Sorted fragments:\n";
foreach my $fragment (@sorted_fragments) {
  printf "[%3d] %s\n", length($fragment), $fragment;
}
