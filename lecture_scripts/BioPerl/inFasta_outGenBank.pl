#!/usr/bin/perl -w  
#file: inFasta_outGenbank.pl
use strict;
use Bio::SeqIO;

my $file = shift;
my $seqIO_object = Bio::SeqIO->new(
                                        -file => $file,
                                        -format => 'fasta',
                                        );

my $out = Bio::SeqIO->new(-format => 'genbank');

while (my $seq_object = $seqIO_object->next_seq){
        $out->write_seq($seq_object); #prints to STOUT
}
