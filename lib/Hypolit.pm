package Hypolit;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/bookmarks/add' => sub {
    send_error("Not logged in", 401);
};

true;
