#!/usr/bin/perl
# this is a test

use strict;
use warnings;

#system("sort myfile2.txt");
my $file = shift @ARGV;

my $command_string = "sort $file";
my $result_of_sort = `$command_string`;
system($command_string);
