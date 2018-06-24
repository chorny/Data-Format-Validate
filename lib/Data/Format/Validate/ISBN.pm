package Data::Format::Validate::ISBN;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_isbn
    looks_like_isbn_10
    looks_like_isbn_13
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_isbn
        looks_like_isbn_10
        looks_like_isbn_13
    /]
);

sub looks_like_isbn ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
        
    $/x
}

sub looks_like_isbn_10 ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}

sub looks_like_isbn_13 ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}
1;
