package Data::Format::Validate::Email;
our $VERSION = q/0.1/;

use Carp;
use base q/Exporter/;

our @EXPORT_OK = qw/
    looks_like_any_email
    looks_like_common_email
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_any_email
        looks_like_common_email
    /]
);

sub looks_like_any_email {

    $_ = shift || croak q/Value most be provided/;
    /./
}

sub looks_like_common_email {

    $_ = shift || croak q/Value most be provided/;
    /./
}
1;
