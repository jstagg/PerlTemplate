#!/usr/bin/perl

use strict;
use warnings;

###
# Inputs
#

my $string = 'http://springfield.us/people/Meet Marge Simpson.html';
#my $string = "";

###
# Variables
#

my @array;
my $output; 

###
# Work
#

@array = split(/ /,$string);
$output = replaceSpaces(@array);
$output = testLast($output);
print "Output: " . $output . "\n";


###
# Functions
#

sub replaceSpaces {
	my $output = join("%20",@_);
	return $output;
}

sub testLast {
	my ($output) = @_;
	print "$output \n";
	unless ($output =~ m/%20/) {
		return "Response Not Expected";
	}
	return $output;
}

