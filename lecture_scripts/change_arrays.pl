#!/usr/bin/perl 
use warnings;
use strict;

my $favorite_color = 'green';
my @colors = ('red', $favorite_color, 'cornflower blue', 5);

my $org = join ("--" , @colors );

## push changes the array
push (@colors , 'black');
my $new = join ("--" , @colors );

print "org: $org\n";
print "new: $new\n";

my $last =  pop @colors;

# while tests for truth
# a list is true if it is not empty ( len > 0 )
# a list is false when it is empty  ( len == 0)
while (my $last = pop @colors){
  print "last is $last\n";
}

# example of scope and my
print "$last\n"; ## this will be 'black'
