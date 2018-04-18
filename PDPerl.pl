use strict;
use warnings;

print "Entrer un chiffre pour connaitre son inverse : ";
my $nb = <STDIN>;
chomp($nb);

unless($nb == 0) {
	my $result = 1/$nb;
	print "1/" . $nb . " = " . $result;
} else {
	print "Impossible de diviser par zero.";
}

my @table = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

print "\nAffichons maintenant sa table de multiplication :\n";

foreach my $i (@table) {
	if ($i < 10) {
		print "\t" . $nb . " x " . $i . "  = " . $nb*$i . "\n";
	} else {
		print "\t" . $nb . " x " . $i . " = " . $nb*$i . "\n";
	}
}

print "\nEncore, juste pour le fun :\n";

foreach (@table) {													# C'est la variable par defaut $_ qui est utilisée ici
	if ($_ < 10) {
		print "\t" . $nb . " x " . $_ . "  = " . $nb*$_ . "\n";
	} else {
		print "\t" . $nb . " x " . $_ . " = " . $nb*$_ . "\n";
	}
}

