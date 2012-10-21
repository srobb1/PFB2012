#!/usr/bin/perl -w
use strict;
use Bio::SearchIO;
#file: sample_blast_parser_1.pl

my $blast_report = shift;

my $searchIO_obj = Bio::SearchIO->new(
                                -file => $blast_report,
                                -format => 'blast'
                                );

while (my $result_obj = $searchIO_obj->next_result ) {
        my $program = $result_obj->algorithm;
        my $queryName = $result_obj->query_name;
        my $queryDesc = $result_obj->query_description;
        my $queryLen = $result_obj->query_length;
        print "program=$program\tqueryName=$queryName\t";
	print "queryDesc=$queryDesc\tqueryLen=$queryLen\n";
}
