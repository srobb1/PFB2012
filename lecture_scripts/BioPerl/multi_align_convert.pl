#!/usr/bin/perl -w
#file:multi_align_convert.pl
use strict;
use Bio::AlignIO;

my $align_fasta = shift;
my $in_alignIO_obj = Bio::AlignIO->new(
                        -format => 'fasta',
                        -file => $align_fasta
                        );
my $out_alignIO_obj = Bio::AlignIO->new(
                        -format => 'nexus',
                        -file => ">$align_fasta.nex"
                        );
while( my $align_obj = $in_alignIO_obj->next_aln ){
        $out_alignIO_obj->write_aln($align_obj);
}
