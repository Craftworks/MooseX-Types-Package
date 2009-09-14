use inc::Module::Install;

name     'MooseX-Types-Package';
all_from 'lib/MooseX/Types/Package.pm';
author   q{Craftworks <craftwork at cpan org>};
license  'perl';

build_requires('Test::More');
build_requires('Moose::Util::TypeConstraints');

requires 'MooseX::Types';
requires 'MooseX::Types::Moose';

author_tests 'xt';

auto_install;

WriteAll;
