#!/usr/bin/perl
use 5.008;
use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Data::Format::Validate',
    license => 'MIT',
    dist_author => 'Israel Costa <israel.batista@univem.edu.br>',
    dist_abstract => 'Perl module to validate data',
    create_makefile_pl => 0,
    create_readme => 0,
    requires => {
        'Carp' => '1.3.8'
    },
    build_requires => {
        'Test::Simple' => '1.302136'
    }
);

$builder->create_build_script();
