#!/usr/bin/perl -w  
#file: inFasta_loop.pl
use strict;
use Bio::SeqIO;

#get fasta filename from user input
my $file = shift; 

#create a SeqIO obj with $file as filename
#$SeqIO_object contains all the individual sequence
#that are in file named $file
my $seqIO_object = Bio::SeqIO->new(
                                        -file => $file,
                                        -format => 'fasta',
                                        );
#using while loop and next_seq function to "get to" 
#and create a Seq obj for each individual sequence
#in the SeqIO obj of many sequences


while (my $seq_object = $seqIO_object->next_seq){
	#do stuff to each sequence in the fasta
}
