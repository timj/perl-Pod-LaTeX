# Makefile for Pod::LaTeX

use ExtUtils::MakeMaker;

# This package is a part of core perl since 5.6.1
my $instdirs = 'site';
if ( $] > 5.006 ) {
  $instdirs = 'perl';
}

# Write the makefile
WriteMakefile(
    'NAME'      => 'Pod::LaTeX',
    'VERSION_FROM' => 'LaTeX.pm', # finds $VERSION
    'EXE_FILES' => [ 'pod2latex' ],
    'INSTALLDIRS' => $instdirs,
    'PREREQ_PM' => { 
        Pod::Find  => 0,
	Pod::Parser => 0,
	Pod::ParseUtils => 0,
        Pod::Select => 0,
       },
    'dist'      => { COMPRESS => "gzip -9f" },
  ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
        (ABSTRACT_FROM => 'LaTeX.pm',
         AUTHOR     => 'Tim Jenness <t.jenness@jach.hawaii.edu>') : ()),
);
