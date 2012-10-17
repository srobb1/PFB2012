#!/usr/bin/perl
# Hi! it's dave

use strict;
use warnings;

print <>;


#my $line = <>;
#print $line, "\n";



my $line_count = 0;

while(my $line = <>) {
   chomp $line;
    $line_count++;
}

print "There are ", $line_count, " lines in this file\n";
