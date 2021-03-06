#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my @array = ('aaa','bbb','ccc','ddd');
my $word = 'ccc';

my $index = binary_search( \@array, $word );
print "$index \n";

sub binary_search {
	my ($arrayref, $word) = @_;
	my ($low, $high) = ( 0, @$arrayref - 1 );

	while ( $low <= $high ) {
		my $try = int( ($low+$high)/2 );
		$low = $try+1, next if $arrayref->[$try] lt $word;
		$high = $try-1, next if $arrayref->[$try] gt $word;
		return $try;
	}
	return 'no match';
}



####################
#       -30-       #
####################
