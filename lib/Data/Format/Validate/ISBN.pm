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

    my $isbn = shift || croak q/Value must be provided/;
    $isbn =~ /^
        
    $/x
}

sub looks_like_isbn_10 ($) {

    my $isbn = shift || croak q/Value must be provided/;
    $isbn =~ /^
    $/x
}

sub looks_like_isbn_13 ($) {

    my $isbn = shift || croak q/Value must be provided/;
    $isbn =~ /^
    $/x
}
1;
