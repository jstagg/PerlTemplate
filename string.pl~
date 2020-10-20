#!/usr/bin/perl

use strict;
use warnings;

my $strings = [qw(A B C D E)];

sub combineList;
print "@$_\n" for combineList $strings, 5;

sub combineList {

	my ($list, $n) = @_;
	die "Insufficient list members" if $n > @$list;

	return map [$_], @$list if $n <= 1;

	my @comb;

	for my $i (0 .. $#$list) {
		my @rest = @$list;
		my $val  = splice @rest, $i, 1;
		push @comb, [$val, @$_] for combineList \@rest, $n-1;
	}
	return @comb;
}
