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

    my $date_time = shift || croak q/Value must be provided/;
    $date_time =~ /^
    $/x
}

sub looks_like_full_datetime ($) {

    my $date_time = shift || croak q/Value must be provided/;
    $date_time =~ /^
    $/x
}
1;
