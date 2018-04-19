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
foreach (@table) {								# C'est la variable par defaut $_ qui est utilisée ici
	if ($_ < 10) {
		print "\t" . $nb . " x " . $_ . "  = " . $nb*$_ . "\n";
	} else {
		print "\t" . $nb . " x " . $_ . " = " . $nb*$_ . "\n";
	}
}

print "\nEntrez un nom de fichier : ";
my $file = <STDIN>;
chomp($file);

if (-f $file) {									# Cette ligne verifie si $file existe dans le repertoire en cours
	print $file . " existe.";
} else {
	print $!;
}

print "\n\nListe de chez paramètres passés au programme : \n";
foreach (@ARGV) {
	print $_ . "\n";
}

print "\nVoici quelques informations utiles sur votre machine : ";

while ((my $cle, my $valeur) = each (%ENV)) {
	print $cle . " a comme valeur " . $valeur . ".\n";
}

print "\nVotre processeur est le suivant : " . $ENV{'PROCESSOR_IDENTIFIER'} . ".\n\n\nFin.\n";