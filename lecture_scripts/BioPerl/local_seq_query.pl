#!/usr/bin/perl -w
#file: local_seq_query.pl

use strict;
use Bio::DB::Fasta;

my $dbfile = '/common/data/swissprot.aa';
my $db = Bio::DB::Fasta->new($dbfile);

# retrieve a sequence
my $id = 'gi|2498443|sp|Q13547.1|HDAC1_HUMAN';
my $seq_obj = $db->get_Seq_by_id($id);

if ( $seq_obj ) {
        print "seq: ",$seq_obj->Bio::Seq::seq,"\n";
} else {
        warn("Cannot find $id\n");
}
