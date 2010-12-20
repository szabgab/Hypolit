package Hypolit;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/bookmarks/add' => sub {
    send_error("Not logged in", 401);
};

get '/bookmarks/delete' => sub {
    send_error("Not logged in", 401);
};


get '/bookmarks/list' => sub {
    send_error("Not logged in", 401);
};

get '/dashboard' => sub {
    send_error("Not logged in", 401);
};

get '/login' => sub {
    template 'login', {
        'missing_username' => 1,
    };
};

true;
