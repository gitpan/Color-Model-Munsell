#!perl -T
#use Data::Dumper;
use Test::More 'no_plan';

BEGIN {
    use_ok( 'Color::Model::Munsell', qw(:all) ) || print "Bail out!
";
}

diag( "Negative check" );
my $err = \$Color::Model::Munsell::ERROR;

ok(!Color::Model::Munsell->new("BooR 1/1"), "Negative, $$err" ) && diag($$err);
ok(!Color::Model::Munsell->new("11.0R 1/1"), "Negative, $$err" ) && diag($$err);
ok(!Color::Model::Munsell->new("5Z 1/1"), "Negative, $$err" ) && diag($$err);
ok(!Color::Model::Munsell->new("5R a/1"), "Negative, $$err" ) && diag($$err);
ok(!Color::Model::Munsell->new("5R 12/1"), "Negative, $$err" ) && diag($$err);
ok(!Color::Model::Munsell->new("5R 1/a"), "Negative, $$err" ) && diag($$err);
