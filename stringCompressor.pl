#!perl

use strict;
use warnings;
use Data::Dumper;

$| = 1;

my $string = q/aabcccccaaa1112333GGG###.......... TTTT/;
#my $string = q/abcdefg123/;

my $strlen = length($string);

my $test = testOne($string,$strlen);

my $output = theThing($string,$strlen,$test);

print $output . "\n";

sub testOne {
  my ($string,$strlen) = @_;
  unless (1 gt $strlen) {
    return 1;
  }
  return 0;
}

sub theThing {
  my ($string,$strlen,$test) = @_;
  unless (0 == $test) {
    my $newstr = '';
    my $letter = '';
    my $next = '';
    my $buffer;
    my $returnnew = 0;
    my @arr = split(//,$string);
    foreach my $i (0..$#arr) {
      my $idx = $i + 1;
      $letter = $arr[$i];
      if ($idx < $strlen) { 
        $next = $arr[$idx]; 
      } else { 
        $next = 'END'; 
      }
      if ($idx == 1) { 
        $buffer = 1; 
      }
      unless ($next eq $letter) {
        $newstr = $newstr . $letter . $buffer;
      }
      if ($next eq $letter) { 
        $buffer++;
        $returnnew = 1;
      } else { 
        $buffer = 1; 
      }
    }
    if (1 == $returnnew) {
      return $newstr;
    } else {
      return $string;
    }
  }
  return $string . " and let's not do the thing\n";
}