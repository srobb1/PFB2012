#!/usr/bin/perl 
use warnings;
use strict;

my @seqs = qw ( ATGGTGCA TTTTTAA CCCGGG TTTATATATAT );

foreach my $seq (@seqs){
 print "seq: $seq\n";
}  

print "before while: @seqs\n";
print "\n-------\n";

##after this while loop, @seqs is empty, len = 0
while (my $seq = shift @seqs){
 print "seq: $seq\n";
}  
print "after while: @seqs\n";
