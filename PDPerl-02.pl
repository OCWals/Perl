use strict;
use warnings;

sub fonction01 {
	print "Appel de fonction effectué !\n";
}

sub inverse {				# L'argument est implicite, avec la variable $_
	if ($_[0] == 0) {
		print "Division par 0 impossible !\n";
	} else {
		print "Linverse de " . $_[0] . " est " . inverse2($_[0]) . ".\n";
	}
}

sub inverse2 {
	return 1/$_[0] unless ($_[0] == 0);
}


my @tab = ("Barney", "Homer", "Marge", "Bart", "Lisa", "Maggie", "Moe", "Flanders");
my $nb;
my $prsn;
my $ToF = 0;


print "Début...\n\n";
fonction01();

print "\nBien, de quel nombre voulez vous maintenant avoir l'inverse : ";
$nb = <STDIN>;
chomp($nb);
inverse($nb);

print "\nMaintenant, qui recherchez vous ? ";
$prsn = <STDIN>;
chomp($prsn);

for (my $x = 1; $x < @tab; $x++) {
	if (@tab[$x] =~ /$prsn/) {									# =~ est l'opérateur de liaison qui permet
		print "\n$prsn est en position " . ($x+1) . ".\n";		# de faire le liens entre une variable et
		$ToF = 1;												# notre éxpression régulière
	}
}
if (!$ToF) {
	print "\n" . $prsn . " ne fait pas partit de la liste.\n";
}


print "\nFin.\n";