use strict;
use warnings;
use Test::More tests => 14;

use ok 'MooseX::Types::Package' => 'Package';

use Moose::Util::TypeConstraints;

ok( defined Package, 'Package' );
ok( my $package = find_type_constraint(Package), 'find Package' );

ok( $package->check('Foo'), 'one tree' );
ok( $package->check('Foo::Bar'),'two trees' );
ok( $package->check('Foo::Bar::Baz'),'three trees' );

ok( $package->check('Foo_Bar'), 'includes underscore' );
ok(!$package->check('Foo-Bar'), 'includes hyphen' );
ok( $package->check('Foo0Bar'), 'includes numeric' );

ok( $package->check('_Foo'), 'begin with underscore' );
ok(!$package->check('0Foo'), 'begin with numeric' );

ok(!$package->check('Foo:Bar'),   'single colon' );
ok( $package->check('Foo::Bar'),  'double colon' );
ok(!$package->check('Foo:::Bar'), 'triple colon' );

