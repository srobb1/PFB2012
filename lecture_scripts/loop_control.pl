#!/usr/bin/perl 
use warnings;
use strict;

my @words = qw(I do not like green eggs and ham);

#foreach my $word (sort {uc($a) cmp uc($b)}@words){

foreach my $word (@words){
  next if $word eq "and";
  print "$word\n";
}

