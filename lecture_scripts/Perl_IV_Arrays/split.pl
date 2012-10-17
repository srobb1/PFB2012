#!/usr/bin/perl 
use strict;
use warnings;

my $string = "I do not like green eggs and ham";
my @words = split("green",$string);
print "@words\n";
print join("--",@words),"\n";

