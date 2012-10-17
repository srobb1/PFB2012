#!/usr/bin/perl
use strict;
use warnings;

## creating an array of nucleotides
my $seq = "ATGGGCGTATGCAATT";
my @nucs = split "", $seq;
print "@nucs\n";
#A T G G G C G T A T G C A A T T

## creating a hash to keep count of nts
my %nt_count;
foreach my $nt (@nucs){
        $nt_count{$nt}++;
}

##just printing the hash is not really usefull
print %nt_count ,"\n";

## just to see whats in our hash
foreach my $nt (keys %nt_count){
        my $count = $nt_count{$nt};
        print "$nt\t$count\n";
}
