#! /usr/bin/perl

#
# Usage: MT_HOME= ./mtspamclear.pl []
#

use strict;
use warnings;

# setup

BEGIN {
    if ($ENV{MT_HOME}) {
        use lib ("$ENV{MT_HOME}/lib");
    }
};
# use MT::Bootstrap;
use MT;
use MT::TBPing;
use MT::Trackback;
my $mt = MT->new() or die MT->errstr;

# do the work

if (scalar @ARGV != 0 && $ARGV[0] eq '-h') {
    print STDERR "MT_HOME=mt_dir $0 [<blog_id>]\n";
    exit 0;
}

MT::Trackback->remove(1100);

