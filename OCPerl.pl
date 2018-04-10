use strict;										# Permet de rendre perl moins permissif et donc
use warnings;									# de detecter plus facilement les erreurs

print "Hello world !";
<>;												# Permet de metre le programe en pause

my $name = "Walid";								# "my" déclare une variable le dolaire indique une variable 'scalaire'
print "Bonjour, " . $name . " !";

my $long = length "Bonjour, $name !";
print "\nLongueur de la chaine : $long.\n";

print "\nOn va maintenant affiché \"Bonjour !\" $long fois :\n\n";
print "\tBonjour !\n" x $long;

print "\nOn va maintenant faire la même chose avec une boucle while :\n";
my $compteur = 1;
while ($compteur < 17) {
	print "$compteur.\tBonjour !\n";
	$compteur = $compteur + 1;
}

print "\nEt enfin, toujours la même chose, mais avec une boucle for :\n";
for (my $x = 1; $x < 17; $x++) {
	print "$x.\tBonjour !\n";
}

print "\nMais toi, comment tu t'appelle ? ";
my $name2 = <STDIN>;							# <> est la forme raccourcié de <STDIN> et permet en réalité de capturer la
chomp $name2;									# saisie utilisateur. La méthode chomp permet de retirer les sauts de ligne
print "Bonjour, $name2 !\n";					# à la fin d'une chaine de caractères


open (my $file, '>', 'test.txt') or die "Imposible d'ouvrir le fichier.";
	# '>' permet d'ouvrir le fichier en écriture, si le fichier test.txt n'existe pas il est crée
	print $file "Hello, world !";				# print permet également d'écrire dans un fichier
close $file;

open (my $file2, '<', 'test2.txt') or die "Impossible d'ouvrir le fichier.";
	# '>' permet d'ouvrir le fichier en lecture, si le fichier test.txt n'existe pas $file pendra la valeur 0

	my $x = 0;
	print "On va maintenant lire le fichier test2.txt :\n\n";
	while (my $ligne = <$file2>) {
		$x++;
		print "$x.\t$ligne";
	}
	print "\n";
close $file2;