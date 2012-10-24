#!/usr/bin/perl
## expression.pl

use strict;
use warnings;

## get the filename to open from the arguments
my $filename = shift;

## open the expression file
open IN, "<", $filename or die "Cannot open $filename: $!\n";

## hash to store tissue information
my %tissue = ();

## hash to store expression levels
my %expr = ();

## hash to store sequences
my %seq = ();

## read each line from the expression file
while (my $line = <IN>) {

  ## remove the newline
  chomp $line;

  ## split the line on tabs
  my @columns = split /\t/, $line;

  ## gene id (1st column)
  my $gene_id = $columns[0];

  ## tissue (2nd column)
  my $tissue_data = $columns[1];

  ## expression (3rd column)
  my $expression_data = $columns[2];

  ## sequence (4th column)
  my $sequence_data = $columns[3];

  ## in the 3 hashes $gene_id will be the key

  ## add to %tissue
  $tissue{$gene_id} = $tissue_data;

  ## add to %expr
  $expr{$gene_id} = $expression_data;

  ## add to %seq
  $seq{$gene_id} = $sequence_data;

}

## array to keep track of gene_id's expressed in liver
my @gene_ids_expressed_in_liver = ();

## search %tissue for genes that are expressed in liver
## (where the value is "liver")
foreach my $gene_id (keys %tissue) {

  ## get the tissue the gene is expressed in
  my $tissue_data = $tissue{$gene_id};

  ## check whether the tissue equals "liver"
  if ($tissue_data eq "liver") {

    ## add gene_id to @gene_ids_expressed_in_liver
    push @gene_ids_expressed_in_liver, $gene_id;

  }

}

## create a report of the gene id and expression level for genes expressed in
## liver
foreach my $gene_id (@gene_ids_expressed_in_liver) {
    
  ## get the expression level
  my $expression_data = $expr{$gene_id};

  ## print the gene id and expression levels to STDOUT
  print "$gene_id\t- $expression_data\n";

}
