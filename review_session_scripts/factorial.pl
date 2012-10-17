#!/usr/bin/perl
use strict;
use warnings;
my $n = shift;
my $i = $n; # make a copy of $n and change that so
# $n keeps the original value entered on the command line
my $factorial = 1;
while ($i > 1) {
    $factorial *= $i; # same as $factorial = $factorial * $i ;
    print "intermediate value $factorial\n";
    $i--;
}
# now you can print the value of $n
print "factorial $n = $factorial\n";

