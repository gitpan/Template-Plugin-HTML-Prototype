use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Template::Plugin::HTML::Prototype',
    license             => 'perl',
    dist_author         => 'Dave Cross <dave@dave.org.uk>',
    dist_version_from   => 'lib/Template/Plugin/HTML/Prototype.pm',
    requires => {
        'Test::More'      => 0,
        'version'         => 0,
	'HTML::Prototype' => 0,
	'Template'        => 0,
    },
    create_makefile_pl  => 'traditional',
    add_to_cleanup      => [ 'Template-Plugin-HTML-Prototype-*' ],
);

$builder->create_build_script();
