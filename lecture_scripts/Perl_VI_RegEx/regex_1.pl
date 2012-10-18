#!/usr/bin/perl 
use strict;
use warnings;

## ( () )

my $pattern = 'w(.)\1(.)\2\1\2';
my $str = 'woof';

if ($str =~ /$pattern/){
  print "$str matches $pattern\n";

}else{
  print "$str does not match $pattern\n";
}

