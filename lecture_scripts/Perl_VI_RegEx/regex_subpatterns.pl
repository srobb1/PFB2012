#!/usr/bin/perl 
use strict;
use warnings;

my $line = "GGGGAAAACTATTATACGGGGGG";

my ($upstream,$downstream) = $line =~ /.(.{5})TATTAT(.{2})./;

print "$upstream     $downstream\n";


