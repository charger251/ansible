#!/usr/bin/env perl

use strict;
use File::Basename qw(basename);

$| = 1;

BEGIN {
    my $appname = basename($0);
    $appname = $1 if $appname =~ /(\w+)-\w+(\.pl)?$/;

    my $lib = "/opt/kaspersky/kesl/perl/";
    unshift @INC, $lib;
}

use KL::App;

KL::Utils::fatal(2, "Script started without root privileges") if ($< != 0);

my $app = new KL::App();

exit( ! $app->parse_cmdline() );
