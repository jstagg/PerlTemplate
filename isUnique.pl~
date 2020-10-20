#!/usr/bin/perl

use strict;
use warnings;

###
# Inputs
#

my $string = "thisismystring";
#my $string = "uniq";
#my $string = "9";
#my $string = "";

###
# Variables
#

my @array;
my $output; 
my $pretest;
my $arrlen1;
my $arrlen2;

###
# Work
#

@array = split(//,$string);
$arrlen1 = countString(@array);
$arrlen2 = countUnique(@array);
$output = compareStrings($arrlen1,$arrlen2);
$output = testLast($output);
print "Output: " . $output . "\n";


###
# Functions
#

sub countString {
	my $count = @_;
	return $count;
}

sub countUnique {
	my %seen;
	return grep { !$seen{$_}++ } @_;
}

sub compareStrings {
	my ($arrlen1,$arrlen2) = @_;
	if ($arrlen1 ne $arrlen2) {
		$output = "NonUnique";
	} else {
		$output = "Unique";
	}
	return $output;
}

sub testLast {
	my ($output) = @_;
	unless ($output =~ m/Unique$/) {
		return "Response Not Expected";
	}
	return $output;
}

