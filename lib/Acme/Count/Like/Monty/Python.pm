package Acme::Count::Like::Monty::Python;

use 5.014002;
use strict;
use warnings;

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Acme::Count::Like::Monty::Python', $VERSION);

1;
__END__

=head1 NAME

Acme::Count::Like::Monty::Python - Count like Monty Python when iterating

=head1 SYNOPSIS

  use Acme::Count::Like::Monty::Python;

  print "Pulling pin.\n";
  print "Counting...\n";
  for (1..3) {
    print "$_\n";
  }
  print "Throwing holy hand grenade\n";

Output:

  Pulling pin.
  Counting...
  1
  2
  5
  Throwing holy hand grenade

=head1 DESCRIPTION

This module ignores the existence of the numbers '3' and '4' when iterating.
=head2 EXPORT

=head1 AUTHOR

Matthew Horsfall (alh) - <wolfsage@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Matthew Horsfall

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.2 or,
at your option, any later version of Perl 5 you may have available.

=cut
