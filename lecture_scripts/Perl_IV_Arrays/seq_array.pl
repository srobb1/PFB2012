#!/usr/bin/perl 
use warnings;
use strict;

my @seqs = qw ( ATGGTGCA TTTTTAA CCCGGG TTTATATATAT );

while (my $seq = shift @seqs){
 print "seq: $seq\n";
}  
