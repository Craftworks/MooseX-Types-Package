package MooseX::Types::Package;

use warnings;
use strict;
use MooseX::Types::Moose qw(Str); 
use MooseX::Types -declare => ['Package'];

our $AUTHORITY = 'cpan:CRAFTWORK';
our $VERSION = '0.001';
$VERSION = eval $VERSION;

subtype Package,
    as Str,
    where { /^[a-zA-Z_][\w:]+$/ && !/\b:\b|:{3,}/ },
    message { 'Must be valid package name' };

1;

__END__

=head1 NAME

MooseX::Types::Package - Package name validation type constraint for Moose.

=head1 SYNOPSIS

  package MyClass;
  use Moose;
  use MooseX::Types::Package 'Package';

  has 'class' => (
      is  => 'ro',
      isa => 'Package',
  );

  has 'classes' => (
      is  => 'ro',
      isa => 'ArrayRef['.Package.']',
  );
  ...

=head1 DESCRIPTION

This package provides Moose types for fun with package name.

=head1 AUTHOR

Craftworks, C<< <craftwork at cpan org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.  I will be notified, and then you'll automatically be
notified of progress on your bug as I make changes.

=head1 COPYRIGHT

Copyright (C) 2009 Craftworks, All Rights Reserved.

=head1 LICENSE

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
