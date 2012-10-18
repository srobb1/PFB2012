#!/usr/bin/perl 
use warnings;
use strict;

my $favorite_color = 'green';
my @colors = ('red', $favorite_color, 'cornflower blue', 5);

$favorite_color = 'black';
my $second = $colors[1];

print "fc:$favorite_color\tsecond:$second\n";

my $length = scalar @colors;
#my $length = length @colors; #this is wrong, returns 1
print "len = $length\n"; 

