#!/usr/bin/perl
use warnings;
use strict;

my %hash;
$hash{books} = 0;
print "books " , $hash{books}, "\n\n";  #prints 0

$hash{books}++; #same as $hash{books} = $hash{books} + 1
print "books " , $hash{books} , "\n"; #prints 1


$hash{cats}++;
print "cats " , $hash{cats} , "\n";
