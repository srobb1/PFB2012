#!/usr/bin/perl
use warnings;
use strict;

my %genetic_code = (
 "CCA" => "Pro",
 "ATG" => "Met",
 "AAA" => "lys",
);

## does exist
my $result = exists $genetic_code{"CCA"};
print $result ,"\n";


## does NOT exist
## returns an empty string
## empty strings are FALSE
$result = exists $genetic_code{"CCC"};
print $result ,"\n";

