#!/usr/bin/perl -w
#file:get_annot_from_genbank.pl
use strict;
use Bio::SeqIO;

my $infile = shift;
my $seqIO = Bio::SeqIO->new(
                -file => $infile,
                -format => 'genbank',
        );
while (my $seqObj = $seqIO -> next_seq){
        my $name = $seqObj -> id;
        foreach my $feature ($seqObj->get_SeqFeatures){
                my $primary_tag = $feature->primary_tag;
                my ($start, $end) = ($feature->start,$feature->end);
                my $range = $start . ".." . $end;
                foreach my $tag ( sort $feature->get_all_tags ) {
                        my @values = $feature->get_tag_values($tag);
                        my $value_str = join ",", @values;
                        print "$name($range)\t$primary_tag\t$tag:$value_str\n";
                }
        }
}
