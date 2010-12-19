use Test::More tests => 4;
use strict;
use warnings;

# the order is important
use Hypolit;
use Dancer::Test;

route_exists [GET => '/'], 'a route handler is defined for /';
response_status_is ['GET' => '/'], 200, 'response status is 200 for /';

route_exists [GET => '/bookmarks/add'], 'a route handler is defined for /bookmarks/add';
response_status_is ['GET' => '/bookmarks/add'], 401, 'response status is 401 for /bookmarks/add';
