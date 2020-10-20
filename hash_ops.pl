##############
# Hash It Up #
##############

use strict;
use warnings;

my %hash = (
    'Dad'   => 'Bob',
    'Mom'   => 'Linda',
    'Kid1'  => 'Tina',
    'Kid2'  => 'Gene',
    'Kid3'  => 'Louise',
    'Cust1' => 'Teddy',
    'Cust2' => 'Mort',
    );

my @kees = keys %hash;

@kees = sort @kees;

print printHdr(q(Keys => Values));
foreach my $i (@kees) {
    print "$i => $hash{$i}\n";
}

my @vals = values %hash;

print printHdr(q(Just Values));
foreach my $i (@vals) {
    print "$i\n";
}


print printHdr(q(Arrayified));
my @arrayified = makeArray(\%hash);
foreach my $i (@arrayified) {
    print $i . "\n";
}

#############
# functions #
#############

sub printHdr {
    my $in = $_[0];
    my $hdr = "="x32 . "\n" . $in . "\n" . "-"x32 . "\n";
    return $hdr;
}

sub makeArray {
    my %hashin = %{$_[0]};
    my @idx = keys %hashin;
    @idx = sort @idx;
    my @array;
    foreach my $i (@idx) {
        push @array,"$i=>$hashin{$i}"
    }
    return @array;
}