#!/usr/bin/perl -w
use strict;
use Bio::SearchIO;
#file: sample_blast_parser_2.pl

my $blast_report = shift;

my $searchIO_obj = Bio::SearchIO->new(
                                -file => $blast_report,
                                -format => 'blast'
                                );

while (my $result_obj = $searchIO_obj->next_result ) {
        while (my $hit_obj = $result_obj->next_hit){
                my $hitName = $hit_obj->name;
                my $hitAcc = $hit_obj->accession;
                my $hitLen = $hit_obj->length;
                my $hitSig = $hit_obj->significance;
                my $hitScore = $hit_obj->raw_score;

                print "hitName=$hitName\thitAcc=$hitAcc\thitLen\t";
		print "hitSig=$hitSig\thitScore=$hitScore\n";
        }
}
