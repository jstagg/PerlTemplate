######################
# Array Ops Examples #
######################

use strict;
use warnings;

my @array = ('One', 'Two', 'Three', 'Four');
my @unshifter;
my @pusher;
my @popper;
my @shifter;

print demarq(q(Let's Go!));
printArray(@array);

print demarq(q(Popper));
popper(@array);

print demarq(q(Shifter));
shifter(@array);

print demarq(q(Pusher));
pusher(@array);

print demarq(q(Unshifter));
unshifter(@array);

print demarq(q(Peek first of array));
print peekTop(@array) . "\n";

print demarq(q(Peek end of array));
print peekBottom(@array) . "\n";

print demarq(q(Slice/dice middle of array));
spliceMiddle(@array);

print demarq(q(Final Queue Counts));
print "Array:     " . @array . "\n";
print "Popper:    " . @popper . "\n";
print "Shifter:   " . @shifter . "\n";
print "Pusher:    " . @pusher . "\n";
print "Unshifter: " . @unshifter . "\n";

#############
# functions #
#############

sub demarq {
    my $i = $_[0];
    my $demarq = "\n" . "-"x32 . "\n" . $i . "\n" . "-"x32 . "\n";
    return $demarq;
}

sub peekTop {
    my $peekTop = $_[0];
    return $peekTop;
}

sub peekBottom {
    my $peekBottom = $_[-1];
    return $peekBottom;
}

sub printArray {
    my @toprint = @_;
    foreach my $i (@toprint) {
        print $i . "\n";
    }
    return;
}

sub spliceMiddle {
    my @tosplice = @_;
    my $count = @tosplice;
    my $midpoint = sprintf '%.0f', ($count/2);
    my $saveval = $tosplice[$midpoint]; #quirk but works!
    splice @tosplice, $midpoint, 1, 'Spliced',$saveval;
    foreach my $i (@tosplice) {
        print $i . "\n";
    }
    return;
}

sub popper {
    my @popper = @_;
    my $count = @popper;
    while ( 0 < $count ) { 
        my $i = pop @popper; 
        $count--; 
        print $i . " popped. " . @popper . " left.\n"; 
    }
    return 1;
}

sub shifter {
    my @shifter = @_;
    my $count = @shifter;
    while ( 0 < $count ) { 
        my $i = shift @shifter; 
        $count--; 
        print $i . " shifted. " . @shifter . " left.\n"; 
    }
    return 1;
}

sub pusher {
    my @topush = @_;
    my $count = @topush;
    while ( 0 < $count ) { 
        my $i = pop @topush; 
        push @pusher,$i; 
        $count--; 
        print $i . " pushed. " . @pusher . " added to the end.\n"; 
    }
    return 1;
}

sub unshifter {
    my @toshift = @_;
    my $count = @toshift;
    while ( 0 < $count ) { 
        my $i = shift @toshift; 
        unshift @unshifter,$i; 
        $count--; 
        print $i . " unshifted. " . @unshifter . " added to the front.\n"; 
    }
    return 1;
}