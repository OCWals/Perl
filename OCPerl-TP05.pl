use strict;
use warnings;

my $x;
do {
	print "Choisir un nombre entre 0 et 100 : ";
	$x = <>;
	chomp $x;
} while ($x < 0 || $x > 100);

open (my $file, '>>', 'TP05-result.txt');
	for (my $y = 1; $y < 11; $y++) {
		print $file "\n$x x $y = " . $y*$x;
	}
close $file;