use strict;
use warnings;

print "Choisissez un animal parmi les suivants :\nChat - Chouette - Lama - Mouette\n\n";
print "Est-ce un oiseau ? ";
my $rep = <>;
chomp $rep;

if ($rep eq "o") {
	print "Est-ce un oiseau marin ? ";
	$rep = <>;
	chomp $rep;
	if ($rep eq "o") {
		print "C'est une mouette !";
	} else {
		print "C'est une chouette !";
	}
} else {
	print "Est-ce un animal qui crache ? ";
	$rep = <>;
	chomp $rep;
	if ($rep eq "o") {
		print "C'est un lama !";
	} else {
		print "C'est un chat !";
	}
}