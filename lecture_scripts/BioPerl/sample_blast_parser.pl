#!/usr/bin/perl -w
use strict;
use Bio::SearchIO;
#file: sample_blast_parser.pl

my $blast_report = shift;

my $searchIO_obj = Bio::SearchIO->new(
                                -file => $blast_report,
                                -format => 'blast'
                                );

while (my $result_obj = $searchIO_obj->next_result ) {
        #result obj
        my $program = $result_obj->algorithm;
        my $queryName = $result_obj->query_name;
        my $queryDesc = $result_obj->query_description;
        my $queryLen = $result_obj->query_length;
        print "Query Name: $queryName\n";

        while (my $hit_obj = $result_obj->next_hit){
                #hit object
                my $hitName = $hit_obj->name;
                my $hitAcc = $hit_obj->accession;
                my $hitLen = $hit_obj->length;
                my $hitSig = $hit_obj->significance;
                my $hitScore = $hit_obj->raw_score;

                print "Hit Name: $hitName\n";

                while (my $hsp_obj = $hit_obj ->next_hsp){
                        #hsp object     
                        my $evalue = $hsp_obj->evalue;
                        my $hitString = $hsp_obj->hit_string;
                        my $queryString = $hsp_obj->query_string;
                        my $homologyString = $hsp_obj->homology_string;

                        print "hsp evalue: $evalue\n";
                        print "HIT     : ",substr($hitString,0,50),"\n";
                        print "HOMOLOGY: ",substr($homologyString,0,50),"\n";
                        print "QUERY   : ",substr($queryString,0,50),"\n";
                }
        }
}
