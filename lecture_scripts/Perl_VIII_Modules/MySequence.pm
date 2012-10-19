package MySequence; 
# file: MySequence.pm

use strict;
use warnings;
use base 'Exporter';

our @EXPORT = qw(reverseq seqlen); # exported by default
our @EXPORT_OK = qw($EcoRI trim_sequence);       # have to ask for it on the 'use' line
our $EcoRI = 'ggatcc';

sub reverseq {
   my $sequence = shift;
   $sequence = reverse $sequence; 
   $sequence =~ tr/gatcGATC/ctagCTAG/; 
   return $sequence;
}

sub seqlen {
   my $sequence = shift;
   $sequence =~ s/[^gatcnGATCN]//g; 
   return length $sequence;
} 

sub trim_sequence {
	
}

1;