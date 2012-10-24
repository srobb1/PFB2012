#!/usr/bin/perl
## upper_case_file.pl

use strict;
use warnings;

## get the filename argument for reading
my $in_file = shift;

## get the filename argument for writing
my $out_file = shift;

## open the filehandle to read from $in_file
open IN, "<", $in_file or die "Error reading $in_file: $!\n";

## open the filehandle to write to $out_file
open OUT, ">", $out_file or die "Error writing $out_file: $!\n";

## read each line from $in_file
while (my $line = <IN>) {

  ## remove the newline
  chomp $line;

  ## make letters uppercase
  my $upper_case_line = uc $line;

  ## write the uppercase line to the $out_file
  print OUT "$upper_case_line\n";
}

## close filehandles
close IN;
close OUT;
