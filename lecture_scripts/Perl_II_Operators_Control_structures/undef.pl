#!/usr/bin/perl

use strict;
use warnings;

my $x = 1;

if (defined $x) {
    print "x is defined: it's $x\n";
}

undef $x;

print "x is: $x\n";


my $y = "George";
my $z = " of the Jungle";
my $q = $y . $z;

my $his_full = "$his_first $his_last";

print "$his_first $his_last\n";
print $his_first . ' ' . $his_last . "\n";

print $his_first;
print "$his_first";

print $q, "\n";
