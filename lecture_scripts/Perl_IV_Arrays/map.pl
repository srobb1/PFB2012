#!/usr/bin/perl
use strict;
use warnings;

my @array = qw (a f gf t ffffh j );
my @map_array = 
map { my $elem = $_ ; length $elem } @array;
print "@map_array\n";
