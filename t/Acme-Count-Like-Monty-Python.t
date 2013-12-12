use strict;
use warnings;

use Test::More;
use Acme::Count::Like::Monty::Python;

my @counts;
for (1..3) {
	push @counts, $_;
}
is_deeply(\@counts, [1, 2, 5], "We know how to count correctly!");

done_testing;
