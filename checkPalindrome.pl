#!/usr/bin/perl

use strict;
use warnings;

###
# Inputs
#

my $string1 = 'taco cat';
#my $string1 = 'etaco cat';

###
# Variables
#

my @array1;
my $output1; 
my $output2; 
my $output; 

###
# Work
#

@array1 = split(//,$string1);
$output1 = stripSpaces(@array1);
$output2 = reverse($output1);
print "$output1\n$output2\n";

###
# Functions
#

sub stripSpaces {
	my $input = join("",@_);
	$input =~ s/\s//g;
	return $input;
}

sub testLast {
	my ($output) = @_;
	unless ($output) {
		return "Response Not Expected";
	}
	return $output;
}

