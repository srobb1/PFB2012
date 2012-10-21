#!/usr/bin/perl -w
#file:getSeqRecord_genbank.pl
use strict;
use Bio::DB::GenBank;

my $out = Bio::SeqIO->new(-format => 'genbank');
my $dbh = Bio::DB::GenBank->new;
my $query = 'MUSIGHBA1';
my $seq_obj = $dbh->get_Seq_by_id($query);

if( $seq_obj ) {
        $out->write_seq($seq_obj);
} else {
        warn("cannot find sequence $query\n");
}
