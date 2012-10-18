#!/usr/bin/perl 
use warnings;
use strict;

my $favorite_color = 'green';
my @colors = ('red', $favorite_color, 'cornflower blue', 5);
my @colors2 = ('red', $favorite_color, 'cornflower blue', 5);

my $string = join ("\t" , @colors);
my $string2 = join ("--" , @colors , @colors2);

print $string , "\n";
print $string2 , "\n";
## @colors is still the same, not changed by join
print $colors[0] , "\n";

