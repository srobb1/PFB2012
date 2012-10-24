#!/usr/bin/perl
## divide.pl

use strict;
use warnings;

## get the first number argument
my $dividend = shift;

## get the second number argument
my $divisor = shift;

## if both arguments have not been provided, bail out
die "Two numbers are required\n" if not defined $dividend or not defined $divisor;

## if both numbers are not positive, bail out
die "Both numbers have to be positive\n" if $dividend < 0 or $divisor < 0;

## if divisor is 0, bail out
die "Divisor cannot be zero\n" if $divisor == 0;

## calculate the quotient
my $quotient = $dividend / $divisor;

## print quotient
print "$quotient\n";
