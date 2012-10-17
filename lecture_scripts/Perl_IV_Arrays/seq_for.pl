#!/usr/bin/perl 
use warnings;
use strict;

my @seqs = qw ( ATGGTGCA TTTTTAA CCCGGG TTTATATATAT );

## length of the array is one more than the last index
for (my $i = 0 ; $i < scalar @seqs ; $i++){
 print "seq: $seqs[$i]\n"; 
}  

print "\n-------\n";

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
