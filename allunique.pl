#!/usr/bin/perl

#######################################################################
#
# Tells us a thing about the thing
#
#######################################################################

use strict;

# The time has come to... localize
my $debug;
my $input;

# check the debug subroutine
iddqd();

# do a thing
if ($ARGV[0]) {
    $input = $ARGV[0];
} else {
    $input = "myteststringwhichisnotunique";
}

my @string = split(//,$input);
my $orig = countChars(@string);
my $uniq = uniqueChars(@string);

if ($orig gt $uniq) {
    print "Not unique\n";
} else {
    print "Unique\n";
}

#######################################################################
# ultra-fancy subroutines
#######################################################################

sub countChars {
    my $count = @_;
    return $count;
}

sub uniqueChars {
    my %count;
    return grep { !$count{$_}++ } @_;
}

sub iddqd {
    # look for a debug argument
    if ( grep( /iddqd/, @ARGV ) ) {
        $debug = 'Y';
    }
    # example check for the debug flag
    if ($debug eq 'Y') {
        print "Degreelessness mode on\n";
    }
}

#######################################################################
#                                -30-                                 #
#######################################################################
