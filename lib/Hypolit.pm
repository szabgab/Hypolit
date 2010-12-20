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
    my $param;
    if (not params->{'username'}) {
        $param = 'missing_username';
    } elsif (not params->{'password'}) {
        $param = 'missing_password';
    } elsif ( params->{'username'} ne $ENV{HYPOLIT_USERNAME} 
         or params->{'password'} ne $ENV{HYPOLIT_PASSWORD} ){
        $param = 'invalid_data';
#die 42;
    } else {
        $param = 'success';
    }
#warn $param;
    template 'login', {
        $param => 1,
    };
};

true;
