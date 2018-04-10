use strict;
use warnings;

my $again = 1;
my $y;

while ($again eq 1) {
	my $x = int(rand 101);
	print "L'ordinateur choisit un nombre entre 0 et 100...\n";

	do {
		print "Tester un nombre : ";
		$y = <>;
		if ($y < $x) {
			print "Trop petit ! ";
		} elsif ($y > $x) {
			print "Trop grand ! ";
		}
	} while ($x != $y);

	print "\nBravo, vous avez gagné !\nContinuer ? (O/N) ";
	my $again2 = lc(<>);
	chomp $again2;
	
	if ($again2 eq "n") {
		$again = 0;
	}
}