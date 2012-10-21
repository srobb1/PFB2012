#!/usr/bin/perl -w
#file:createSeqOnFly.pl
use strict;
use Bio::Seq;
use Bio::SeqIO;

my $seqObj = Bio::Seq->new(-seq => 'ATGAATGATGAA',
                        -display_id => 'seq_example',
                        -description=> 'this seq is awesome');

my $out = Bio::SeqIO->new(-format => 'fasta');
$out->write_seq($seqObj);

print "Id: ",$seqObj->display_id, "\n";
print "Length: ", $seqObj->length, "\n";
print "Seq: ",$seqObj->seq,"\n";
print "Subseq (3..6): ", $seqObj->subseq(3,6), "\n";
print "Translation: ", $seqObj->translate->seq, "\n";
