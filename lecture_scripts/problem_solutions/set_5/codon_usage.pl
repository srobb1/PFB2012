#!/usr/bin/perl
## codon_usage.pl

use strict;
use warnings;

## dna sequence
my $sequence = "AGCTTAAGGCCGTTAAAATTAAGC";

## hash to keep count of codons
my %codon_usage = ();

## we can use a for loop to go through our sequence and extract the codons
## we usually increment the position by one (++), but in this case
## we can increment the position by 3, since we're looking at 3 bases at a
## time.
## we still want to stop the loop when we reach the end of our sequence
for (my $offset = 0; $offset < length($sequence); $offset += 3) {

  ## extract the codon from the sequence
  my $codon = substr($sequence, $offset, 3);

  ## increment the count for $codon in the %codon_usage hash
  $codon_usage{$codon}++;

}

## report the codon usage
foreach my $codon (keys %codon_usage) {

  ## get the count for $codon
  my $count = $codon_usage{$codon};

  ## print the codon usage to STDOUT
  print "$codon - $count\n";

}
