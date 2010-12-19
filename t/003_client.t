use strict;
use warnings;
use Test::More;

plan tests => 2;

use_ok('Hypolit::Client');
my $h = Hypolit::Client->new;
isa_ok $h, 'Hypolit::Client';

