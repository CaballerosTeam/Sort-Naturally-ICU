use strict;
use warnings;
use Test::More;
use Sort::Naturally::XS;


# CCXX test
my $ar_mixed_strong = ['H4', 'T25', 'H5', 'T27', 'H8', 'T30', 'HEX', 'T35', 'M10', 'T4', 'M12', 'T40', 'M13', 'T45',
	'M14', 'T47', 'M16', 'T5', 'M4', 'T50', 'M5', 'T55', 'M6', 'T6', 'M7', 'T60', 'M8', 'T7', 'M9', 'T70', 'Ph0', 'T8',
	'Ph1', 'T9', 'Ph2', 'TT10', 'Ph3', 'TT15', 'Ph4', 'TT20', 'Pz0', 'TT25', 'Pz1', 'TT27', 'Pz2', 'TT30', 'Pz3', 'TT40',
	'Pz4', 'TT45', 'R10', 'TT50', 'R12', 'TT55', 'R13', 'TT6', 'R14', 'TT60', 'R5', 'TT7', 'R6', 'TT70', 'R7',
	'TT8', 'R8', 'TT9', 'S', 'TX', 'Sl', 'XZN', 'T10', 'держатель', 'T15', 'набор', 'T20'];
my $ar_mixed_strong__expected = ['H4', 'H5', 'H8', 'HEX', 'M4', 'M5', 'M6', 'M7', 'M8', 'M9', 'M10', 'M12', 'M13',
	'M14', 'M16', 'Ph0', 'Ph1', 'Ph2', 'Ph3', 'Ph4', 'Pz0', 'Pz1', 'Pz2', 'Pz3', 'Pz4', 'R5', 'R6', 'R7', 'R8', 'R10',
	'R12', 'R13', 'R14', 'S', 'Sl', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T15', 'T20', 'T25', 'T27', 'T30', 'T35',
	'T40', 'T45', 'T47', 'T50', 'T55', 'T60', 'T70', 'TT6', 'TT7', 'TT8', 'TT9', 'TT10', 'TT15', 'TT20', 'TT25', 'TT27',
	'TT30', 'TT40', 'TT45', 'TT50', 'TT55', 'TT60', 'TT70', 'TX', 'XZN', 'держатель', 'набор'];
nsort($ar_mixed_strong);
ok(eq_array($ar_mixed_strong__expected, $ar_mixed_strong), 'CCXX test');

done_testing();