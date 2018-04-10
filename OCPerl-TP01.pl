use strict;
use warnings;

print "Entrez la phrase : ";
my $phrase = <>;
chomp $phrase;

print "Combien de fois ? ";
my $nb = <>;
chomp $nb;

print "\n" . "$phrase\n" x $nb . "\n";


print "Entrez un nombre : ";
my $nb2 = <>;
chomp $nb2;

print "Voici sa table de multiplication :\n\n";
print "1 x " . $nb2 . " = " . 1*$nb2 . "\n";
print "2 x " . $nb2 . " = " . 2*$nb2 . "\n";
print "3 x " . $nb2 . " = " . 3*$nb2 . "\n";
print "4 x " . $nb2 . " = " . 4*$nb2 . "\n";
print "5 x " . $nb2 . " = " . 5*$nb2 . "\n";
print "6 x " . $nb2 . " = " . 6*$nb2 . "\n";
print "7 x " . $nb2 . " = " . 7*$nb2 . "\n";
print "8 x " . $nb2 . " = " . 8*$nb2 . "\n";
print "9 x " . $nb2 . " = " . 9*$nb2 . "\n";
print "10 x " . $nb2 . " = " . 10*$nb2 . "\n";

print "\nMDP : ";
my $mdp = "DBAYB";
my $mdp2 = <>;
chomp $mdp2;
my $result;

if ($mdp eq $mdp2) {
	$result = 1;
	print "Success ! ";
} else {
	$result = 0;
	print "Fail ! ";
}

if ($result eq 0) {
	print "Access denied.";
} else {
	print "\nH/F :? ";
	my $sex = lc(<>);					# La fonction lc() permet de passer la string en minuscule
	chomp $sex;
	if ($sex eq "h") {
		print "Bonjour, monsieur !";
	} elsif ($sex eq "f") {
		print "Bonjour, madame ! ";
	} else {
		print "Bonjour, machin !";
	}
	print "Vous êtes bien charmante." if lc($sex) eq "f";
	# On peut aussi écrire nos conditions sur une ligne si elle n'ont pas de bloc else
}