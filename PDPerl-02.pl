use strict;
use warnings;

sub fonction0 {
	print "Appel de fonction effectué !\n";
}

sub inverse {										# L'argument est implicite, avec la variable $_
	if ($_[0] == 0) {
		print "Division par 0 impossible !\n";
	} else {
		print "Linverse de " . $_[0] . " est " . inverse2($_[0]) . ".\n";
	}
}

sub inverse2 {
	return 1/$_[0] unless ($_[0] == 0);
}

print "Début...\n";
fonction0();

print "\nBien, de quel nombre voulez vous maintenant avoir l'inverse : ";
my $nb = <STDIN>;
chomp($nb);
inverse($nb);

print "\n"





print "\nFin.";