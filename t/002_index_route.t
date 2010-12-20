use strict;
use warnings;
use Test::More;

my @protected = qw(/bookmarks/add /bookmarks/delete /bookmarks/list /dashboard);
plan tests => 2 + 2 * @protected + 3;

# the order is important
use Hypolit;
use Dancer::Test;

route_exists [GET => '/'], 'a route handler is defined for /';
response_status_is ['GET' => '/'], 200, 'response status is 200 for /';

foreach my $route (@protected) {
	route_exists [GET => $route], "a route handler is defined for $route";
	response_status_is ['GET' => $route], 401, "response status is 401 for $route";
}

route_exists [GET => '/login'], 'a route handler is defined for /login';
response_status_is ['GET' => '/login'], 200, 'response status is 200 for /login';
response_content_like['GET' => '/login'], qr{Missing username}, 'response for /login';


