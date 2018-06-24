package Data::Format::Validate::URL;
our $VERSION = q/0.1/;

use Carp;
use base q/Exporter/;

our @EXPORT_OK = qw/
    looks_like_any_url
    looks_like_full_url
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_any_url
        looks_like_full_url
    /]
);

sub looks_like_any_url {

    $_ = shift || croak q/Value must be provided/;
    /^
        ((https?|ftp):\/\/)?
        [a-z0-9-]+(\.[a-z0-9-]+)+
        ([\/?].*)?
    $/ix
}

sub looks_like_full_url {

    $_ = shift || croak q/Value must be provided/;
    /^
        (https?|ftp):\/\/
        (www|ftp)\.
        [a-z0-9-]+(\.[a-z0-9-]+)+
        ([\/?].*)?
    $/ix
}
1;