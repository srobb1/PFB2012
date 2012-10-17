#!/usr/bin/perl
use warnings;
use strict;
# pass filename and number of lines to read from the file on command line

my $arg1 = shift;
my $arg2 = shift;

open(my $fh, "<", $arg1);







print "\n\nWith while loop------------------\n\n";

my $count = 0;
while ( $count < $arg2  )   {
    my $line = <$fh>; #read a line from the file
    chomp $line;
    print "$line\n";
    $count++;
}

print "\n\n\n---- with while loop and last ----\n";
close($fh);

open($fh,"<",$arg1);

#simon doesn't recommend this version - extra complexity
 $count = 0;
while ( my $line = <$fh>) {
    chomp $line;
    print "$line\n";
    $count++;
    if ($count >= $arg2) {
	last;
    }

}

close($fh);
open($fh,"<",$arg1);

print "\n\n\n--- with for loop -----\n\n";
# start from zero for array indices, string offsets (perl internals)
# start from one if printing lines for humans
for (my $i =0 ; $i < $arg2  ;$i++) {
    my $line = <$fh>;
    chomp $line;
    print "$line\n";
}
