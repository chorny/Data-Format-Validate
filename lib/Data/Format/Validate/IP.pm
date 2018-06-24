package Data::Format::Validate::IP;
our $VERSION = q/0.1/;

use Carp qw/croak/;
use base q/Exporter/;

our @EXPORT_OK = qw/
    looks_like_ipv4
    looks_like_ipv6
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_ipv4
        looks_like_ipv6
    /]
);

sub looks_like_ipv4 {

    $_ = shift || croak q/Value must be provided/;
    /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/
}

sub looks_like_ipv6 {

    $_ = shift || croak q/Value must be provided/;
    /^(?:[A-F0-9]{1,4}:){7}[A-F0-9]{1,4}$/i
}
1;
