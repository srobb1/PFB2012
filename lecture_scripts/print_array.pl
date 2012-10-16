#!/usr/bin/perl 
use warnings;
use strict;

my $favorite_color = 'green';
my @colors = ('red', $favorite_color, 'cornflower blue', 5);

## no quotes no spaces
## quotes, array will print with spaces
print "no quotes: " , @colors , "\n"; 
print "quotes: @colors\n"; 

