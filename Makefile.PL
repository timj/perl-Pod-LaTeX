# Makefile for Pod::LaTeX

use ExtUtils::MakeMaker;

# Write the makefile
WriteMakefile(
    'NAME'      => 'Pod::LaTeX',
    'VERSION_FROM' => 'LaTeX.pm', # finds $VERSION
    'EXE_FILES' => [ 'pod2latex' ],
    'PREREQ_PM' => { 
        Pod::Find  => undef,
	Pod::Parser => undef,
	Pod::ParseUtils => undef,
       },
    'dist'      => { COMPRESS => "gzip -9f" },
  ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
        (ABSTRACT_FROM => 'LaTeX.pm',
         AUTHOR     => 'Tim Jenness <t.jenness@jach.hawaii.edu>') : ()),
);
