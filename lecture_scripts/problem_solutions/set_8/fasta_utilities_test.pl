#!/usr/bin/perl
## fasta_utilities_test.pl

## fasta sequence
my $fasta = ">gi|170016048|ref|NM_001122723.1| Xenopus (Silurana) tropicalis microcephalin 1 (mcph1), mRNA
CGGGTTCTGAAAGTAATGTGTGTGGAGTATGGAGTCTCCTGTAACAGCGTTGTCTTCTCTGTATGGACAT
GTTCTTTCAGATGTTACTGCATATGTTGAGGTGTGGTCATCCAACAGAAGAGAAAATTATTCTAAAACAT
TTTCACAACAGCTGGTTAATTTAGGTGCAAAGGTTTCGAAAACCTTTAATAAACACATTACTCATGTTGT
TTTTAAAGATGGCCATCAAGGTACCTGGGACAAGGCTGTCAAGGCTGGTGTGAAACTGGTGTCTGTACTT
TGGGTGGAAAGATGCAGAGAGGCTGCGGCACATGTAGATGAATCTGAATTTCCAGCAATCAATACAAATG
ATGGATTGCCACAGATTGTTAAAAAGAAACACAAGTGTATGCAACCCAAGGATTTTGTTGAGAAAACACC
AGAAAATGATAGACGAATGCAAAGAAAATTTGATAAAATGTCTAAAGAACTGAAAGTGCAAAAAGCTGGT
GTAGATGATCCTGTTTTATTATTTGATCAATATGGAACATTAATGTACAGCCCAAAGGCTGTGGCTGCTG
ATTGTTGCAATGCAATGGAAAAAAGAATTAAAGAAATGAAAAACAAGAGAGAGAATCTTTCTCCTACAGC
CTCCCAAATTTCACAGACATTTGATTTTCCCCAACTTAAGCCATCACTTGGATATAGTCCTTCTGCCTTG
GGGAGCTCTCCACTTGACAATGGCTGTGACGATCTTGACACTAGTTATGATGAGCTGTGGGGCAGTCTCG
AAAAGAAACGGAACATTTCTAACTACTCAAAGAACAAAGTAACAAGTAAAAAATCAGTGATACGTGCAAC
AGAACTAGAAGATCCAAATTGCCTTTTAACATCTGGCAAGTCATCTAATAATTTGACTCCTCAGCAGATT
AAAGACAAATTACGGAGGAATAGTCATGCAGTCACGTCTTTTCAAAAGAAAAGCAGAAAGTCACTTGCAA
GTAAAACAGTTGAGGAGCCAGTTCAATCCTTTATGAATTGTGGTACACAGAGTGCATTGGATTCCAATGT
GGATTATGAAGCCCTGCCAAACAAACTTACTGTGTGCGAAGAAAATGAAAGTACTAAGAAAGTAAGATCA
AATTGCCGGAAATCCAAAACTCCGACATCCAATCTGCACCTCTCAACTGAAAACATTGTGATGCCTGAGA
TACCAAAACTTAGTGAATTAAGAAATGGCTCTGATTCAGAAGGAGCATGTTCTAGTTTTGAAGACTTTTT
TTCAGCAGATATAAAAAGCCAGAAAAGACCATTTGCTAGATTTTCCTTAGGAACTCTGCCTCCAGAGTCA
CCAACCTCACCTTTATTTATCAAAAACAAAAAGGGTTCATCTCGAAAAAGGAGGAGGTCAGTTCAAGATT
TGGAAGAGTGTAATTCTAGTGGTAAAAGAAGAAGAAAGTCAATATGTAGTAAGGATAATCTGGTAAATTC
AGAGTCCAAACATGATGCCAAGACAATGTCACCCGTGGCCGACTGTGTTGAAAGGAATCCTATAAAAACT
AAAATAAATAAAACTGCTAAGTCTGATCAAGTAAACAATAAAGGAACTACATCAAGCAGTTTACTATCTT
CTGAAACAAATTTAAATACAAAAGATACATTAGCAACATCTTCTGAATTAAATCAAAAGAAAGATATAGG
TCTGGTAAAAGGTATGGAAAAAATAACTGAATTGACAACATGCAAAAAATCACCAAATCAGCCTGTGATG
AAAAATGGTGCAGAGTCTGAAAAGCAAGAAGATGAGCCAAAAAGCTTTCAGAAATGTATGTGAACAATTA
TCCATTATTAGCTGATCCATTATTAACTGATTTTTCTTTGTTGGTAATACAACTTTGTCTTATAGCTAAT
AATAGTACTGTCCAATTTGGTTAGGTTTCTCATATGTCTGACAAAAAAAGGCAATTCACAGATTTTTTTC
TTTTGCTGTGACCGACACGTTTACTGCATAACATTGTTTTGAATATTTTAAATTATGCAACCTTAGTTTT
TTGTTTTTTTTTATTTAAAAATAAAATTGTTAGAATGGCAGGTGTCAATAAATGTGCTATTAGAAGGATG
CTTTCAGATATACAAGTAATCTTGCATGATCTTGTGTCGAGACAAGCTAAAATATTGCAGTCTGAAATCT
ATGATTCTTTCACTTAATTTTATATGCTGGTGGTTTTAACCTTAGCTTTCTGACATATTTTTTTTTTTTA
TGGAAATTTTCATGTGTGGCCCAAGAATTTCATATTTTTTTGGGAATCTGTAAAAAAAAAATGGAGGGAT
TCTAATGTACAATGCTTCATGCATAGTGGCGCTGTATTATTAGAATATACATACATTGCAAGATAGACTG
ATCGGTGTTGTTTTATCTTGCCTTCTCTGGTCATGCTTTAGAATCAGGTAAAGATTTTGATTTTTTGCAT
TGTCAAATAAAGCTGCTTGATAAGAAAAAAAAAAAAAAAAAAAAAAAAAA";

## make FastaUtilities available to our program
use FastaUtilities;

## get the id
my $id = get_id($fasta);

## print id
print "Id:\n";
print "$id\n";
print "\n";

## get the description
my $description = get_description($fasta);

## print description
print "Description:\n";
print "$description\n";
print "\n";

## get the sequence
my $sequence = get_sequence($fasta);

## print sequence
print "Sequence:\n";
print "$sequence\n";
print "\n";

## reformat the sequence with 60 characters per line
my $new_fasta = reformat_fasta($fasta, 60);

## print new fasta
print "New fasta:\n";
print "$new_fasta\n";