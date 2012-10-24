#!/usr/bin/perl
## line_length.pl

use strict;
use warnings;

## get the filename argument
my $file = shift;

## total length of the file
my $total_length = 0;

## number of lines in the file
my $number_of_lines = 0;

## open a filehandle to access the file
open IN, "<", $file or die "Error reading $file: $!\n";

## read each line of the file
while (my $line = <IN>) {

  ## remove the newline
  chomp $line;

  ## add to the count of lines
  $number_of_lines++;

  ## get the length of the line
  my $length = length $line;

  ## print the length of the line to STDOUT
  print "Line length for line $number_of_lines: $length\n";

  ## add to the total length of the file up to this line
  $total_length += $length;
}

## calculate the average line length
my $average_line_length = $total_length / $number_of_lines;

## print the average line length to STDOUT
print "Average line length: $average_line_length\n";

## close filehandles
close IN;
