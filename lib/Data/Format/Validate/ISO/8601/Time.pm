package Data::Format::Validate::ISO::8601::Time;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_timezone
    looks_like_full_time
    looks_like_hour_minute
    looks_like_hour_minute_second
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_timezone
        looks_like_full_time
        looks_like_hour_minute
        looks_like_hour_minute_second
    /]
);

sub looks_like_timezone ($) {

    my $time = shift || croak q/Value must be provided/;
    $time =~ /^
    $/x
}

sub looks_like_full_time ($) {

    my $time = shift || croak q/Value must be provided/;
    $time =~ /^
    $/x
}

sub looks_like_hour_minute ($) {

    my $time = shift || croak q/Value must be provided/;
    $time =~ /^
    $/x
}

sub looks_like_hour_minute_second ($) {

    my $time = shift || croak q/Value must be provided/;
    $time =~ /^
    $/x
}
1;
