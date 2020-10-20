#!/usr/bin/perl

####################
#
# Tells us a thing about the thing
#
####################

use strict;

# localize to the program
my $debug;

# check the debug subroutine and tattle
iddqd();

# do a thing
printLine('Done','with','this');

# ultra-fancy subroutines
# spolier alert... they are UN-fancy!
#

sub printLine {
    # silly but fun
    my $line = join(' ',@_);
    print $line . "\n";
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

####################
#       -30-       #
####################
