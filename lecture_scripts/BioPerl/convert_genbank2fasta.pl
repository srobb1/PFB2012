#!/usr/bin/perl -w
#file:convert_genbank2fasta.pl

use strict;
use Bio::SeqIO;

my ($informat,$outformat) = ('genbank','fasta');
my ($infile,$outfile) = @ARGV;

my $in = Bio::SeqIO->new(
                -format => $informat,
                -file => $infile,
                );
my $out = Bio::SeqIO->new(
                -format => $outformat,
                -file => ">$outfile"
                );

while ( my $seqObj = $in->next_seq ) {
        $out->write_seq($seqObj);
}
