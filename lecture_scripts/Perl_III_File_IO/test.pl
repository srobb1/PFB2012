#!/usr/bin/perl
# this is a test

use strict;
use warnings;

my $file = shift @ARGV;
open(my $filehandle, '>', $file) or die "couldn't open $file: $!\n";

print STDOUT "I'm printing to STDOUT\n";
print $file "open succeeded\n";




