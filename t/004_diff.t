#!/usr/bin/perl

use strict;
use warnings;

use Test::More no_plan => 1;

my $m;
BEGIN {
    use_ok( $m = 'Array::Diff' );
}

can_ok( $m, 'new' );
can_ok( $m, 'diff' );
can_ok( $m, 'added' );
can_ok( $m, 'deleted' );

my $old = [ 'a', 'b', 'c' ];
my $new = [ 'b', 'c', 'd' ];

my $diff_expected_added   = ['d'];
my $diff_expected_deleted = ['a'];
my $diff;
eval {
    $diff = $m->diff( $old, $new );
};

is_deeply( $diff->added,   $diff_expected_added,   "added list correctly" );
is_deeply( $diff->deleted, $diff_expected_deleted, "deleted list correctly" );

