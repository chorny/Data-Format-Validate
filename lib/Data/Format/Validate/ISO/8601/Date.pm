package Data::Format::Validate::ISO::8601::Date;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_date
    looks_like_year_week
    looks_like_year_month
    looks_like_year_ordinal
    looks_like_year_week_date
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_date
        looks_like_year_week
        looks_like_year_month
        looks_like_year_ordinal
        looks_like_year_week_date
    /]
);

sub looks_like_date ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}

sub looks_like_year_week ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}

sub looks_like_year_month ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}

sub looks_like_year_ordinal ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}

sub looks_like_year_week_date ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}
1;
