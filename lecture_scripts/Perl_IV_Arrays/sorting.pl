#!/usr/bin/perl 
use warnings;
use strict;

my $num1 = 10;
my $num2 = 2;
my $num3 = 100;
my $num4 = 5;
my $num5 = 0;

### bad idea ## my $result_2 = $num1 <=> $num2;

## good idea ##
my @nums =  ($num1 , $num2 , $num3, $num4 , $num5);
my @sorted_num = sort {$a <=> $b} @nums;

print "@sorted_num\n";



