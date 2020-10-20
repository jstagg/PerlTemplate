#!/usr/bin/perl

use strict;
use warnings;

###
# Inputs
#

my $string1 = 'abcd';
#my $string2 = 'abcd';
#my $string2 = 'abcde';
#my $string2 = 'abde';
my $string2 = 'cdab';
#my $string2 = 'zyxw';

###
# Variables
#

my @array1;
my @array2;
my $output1; 
my $output2; 
my $output; 

###
# Work
#

@array1 = split(/ /,$string1);
@array2 = split(/ /,$string2);
$output1 = sortString(@array1);
$output2 = sortString(@array2);

if ($output1 eq $output2) {
	$output = "Are permutations";
} else {
	$output = "Not permutations";
}

$output1 = testLast($output1);
$output2 = testLast($output2);
print "Output: " . $output . "\nOutput1: " . $output1 . "\nOutput2: " . $output2 . "\n";


###
# Functions
#

sub sortString {
	my $input = join("",@_);
	my @arr = split(//,$input);
	@arr = sort @arr;
	my $output = join(",",@arr);
	return $output;
}

sub testLast {
	my ($output) = @_;
	unless ($output) {
		return "Response Not Expected";
	}
	return $output;
}

