require 5.005;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME	 => 'IO::String',
    VERSION_FROM => 'String.pm',
    dist         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
