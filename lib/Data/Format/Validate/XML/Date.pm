package Data::Format::Validate::XML::Date;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_date
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_date
    /]
);

sub looks_like_date ($) {

    $_ = shift || croak q/Value must be provided/;
    /^
    $/x
}
1;
