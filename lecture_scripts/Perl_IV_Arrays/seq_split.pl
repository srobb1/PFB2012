#!/usr/bin/perl 
use strict;
use warnings;

my $seq = "ATGCGACCGGTTAA";
my @nts = split('',$seq);
print "seq/array len = " , scalar @nts , "\n";
print "@nts\n";
print join("--",@nts),"\n";

my @sorted_nts = sort (@nts);
print join("--",@sorted_nts),"\n";


