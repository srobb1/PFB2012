#!/usr/bin/perl 
# file: sequence.pl
use strict;
use warnings;
use MySequence;

my $sequence ='gattccggatttccaaagggttcccaatttggg'; 
my $complement = MySequence::reverseq($sequence);
print 'EcoRI is ', $EcoRI, "\n";

my $EcoRI = 'GGATTC';
print 'EcoRI is ', $EcoRI, "\n";


seqlen();

print "original = $sequence\n"; 
print "complement = $complement\n";

sub seqlen {
	print "I'm not doing anything really.\n";
}

