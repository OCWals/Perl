use strict;
use warnings;

print "Copien en cours...";

open (my $file2, '<', 'test2.txt');
	open (my $file, '>>', 'test3.txt');

	while (my $ligne = <$file2>) {
		print $file "$ligne";
	}
	close $file;
close $file2;

print "\nCopie terminée !\n";
print "\nVoici le contenu du fichier copié :\n\n";

open ($file, '<', 'test3.txt');
	while (<$file>) {
		print;
	}
close $file;