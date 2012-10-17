#!/usr/bin/perl
# Hi! it's dave

use strict;
use warnings;

print "@ARGV\n";

my $sequence;
while(my $line = <>) {
    chomp $line;
    $sequence = $sequence . $line;
}
my $length = length $sequence;
print 'length= ', $length, "\n";

print STDOUT $sequence, "\n";

