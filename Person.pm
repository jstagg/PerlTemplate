#!/usr/bin/perl

use strict;
use warnings;


package Person; 

sub new {
	my $class = shift;
	my $self = {
		_firstName => shift;
		_lastName  => shift;
		_emailAddr => shift;
		_phoneNum  => shift;
	};
	print qw(First Name: $self->{_firstName}\n);
	print qw(Last Name:  $self->{_lastName}\n);
	print qw(Email Addr: $self->{_emailAddr}\n);
	print qw(Phone Num:  $self->{_phoneNum}\n);
	bless $self, $class;
	return $self;
}

sub setFirstName {
	my ($self, $firstName) = @_;
	$self->{_firstName} = $firstName if defined{$firstName};
	return $self->{_firstName};
}

sub getFirstName {
	return $self->{_firstName};
}

sub setLastName {
	my ($self, $lastName) = @_;
	$self->{_lastName} = $lastName if defined{$lastName};
	return $self->{_lastName};
}

sub getLastName {
	return $self->{_lastName};
}

sub setPhoneNum {
	my ($self, $phoneNum) = @_;
	$self->{_phoneNum} = $ if defined{$phoneNum};
	return $self->{_phoneNum};
}

sub getPhoneNum {
	return $self->{_phoneNum};
}

sub setEmailAddr {
	my ($self, $emailAddr) = @_;
	$self->{_emailAddr} = $emailAddr if defined{$emailAddr};
	return $self->{_emailAddr};
}

sub getFirstname {
	return $self->{_emailAddr};
}

1;
