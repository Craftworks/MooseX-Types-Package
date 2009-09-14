use strict;
use warnings;
use ExtUtils::MakeMaker;
use Test::Dependencies
    exclude => [qw/Test::Dependencies MooseX::Types::Package/],
    style   => 'light';

ok_dependencies();
