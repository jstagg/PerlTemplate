#!/usr/bin/perl

#######################################################################
#
# Tells us a thing about the thing
#
#######################################################################

use strict;

# The time has come to... localize
my $input0;
my $input1;

# do a thing
if ($ARGV[0],$ARGV[1]) {
    $input0 = $ARGV[0];
    $input1 = $ARGV[1];
} else {
    $input0 = "test";
    $input1 = "teststring";
}

my @string0 = split(//,$input0);
my @string1 = split(//,$input1);
my $s0 = countChars(@string0);
my $s1 = countChars(@string1);

if ($s0 gt $s1) {
    print "string0 is not a permutation of string1\n";
} elsif ($s1 gt $s0) {
    print "string1 is not a permutation of string0\n";
} else {
    print "may be a permutation\n";
}

#######################################################################
# ultra-fancy subroutines
#######################################################################

sub countChars {
    my $count = @_;
    return $count;
}

#######################################################################
#                                -30-                                 #
#######################################################################
