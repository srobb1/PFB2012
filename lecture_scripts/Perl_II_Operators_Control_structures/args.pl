#!/usr/bin/perl
use strict;
use warnings;

my $count = scalar @ARGV;
print "There are $count arguments total.\n";

my $arg_string = join(' ', @ARGV);
print 'Arg string = ', $arg_string, "\n";

print join '-', @ARGV, "\n";

my $arg1 = shift @ARGV;
my $arg2 = shift @ARGV;
print "my command-line arguments were $arg1 and $arg2\n";
