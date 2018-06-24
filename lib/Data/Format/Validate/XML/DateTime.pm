package Data::Format::Validate::XML::DateTime;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_datetime
    looks_like_full_datetime
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_datetime
        looks_like_full_datetime
    /]
);

sub looks_like_datetime ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}

sub looks_like_full_datetime ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}
1;
