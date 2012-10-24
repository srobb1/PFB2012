#!/usr/bin/perl
## even_odd.pl

use strict;
use warnings;

## create file myresult.txt and open it for writing output
open OUT, ">", "myresult.txt" or die "Error writing to file: $!\n";

## open numbers.txt for reading
open IN, "<", "numbers.txt" or die "Error reading file: $!\n";

## read each line in the file
while (my $number = <IN>) {

  ## remove the newline
  chomp $number;

  ## check if the number is even -- we can use the modulus operator to see
  ## the remainder when the number is divided by 2; if it's 0, then it's
  ## even
  if ($number % 2 == 0) {

    ## check whether the number is less than 24
    if ($number < 24) {

      ## print the number
      print "$number\n";
    }

  }
  ## odd number
  else {

    ## compute the factorial of the number
    my $factorial = 1;
    ## go through each value from $number down to 1
    for (my $i = $number; $i > 0; $i--) {
      ## multiply the existing result by the new lower number
      $factorial *= $i;
    }

    ## print the factorial
    print OUT "$factorial\n";

  }

}

## close the file handles
close IN;
close OUT;
