#!/usr/bin/perl 
use strict;
use warnings;

my $sequence = 'GTTGCCTGAAATGGCGGAACCTTGAAAA';


my @frame1 = $sequence =~ /(.{3})/g;
my @frame2 = substr($sequence,1) =~ /(.{3})/g;
my @frame3 = substr($sequence,2) =~ /(.{3})/g;
print "$sequence\n";
print "@frame1\n";
print "@frame2\n";
print "@frame3\n";
