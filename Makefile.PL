use 5.014002;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Acme::Count::Like::Monty::Python',
    ABSTRACT          => "Count like Monty Python when iterating",
    VERSION_FROM      => 'lib/Acme/Count/Like/Monty/Python.pm',
    BUILD_REQUIRES => {
      "Test::More" => "0.88"
    },
    test => {
      TESTS => "t/*.t",
    },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
       (AUTHOR         => 'Matthew Horsfall <wolfsage@gmail.com>') : ()),
);
