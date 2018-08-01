package Data::Format::RFC::2822::Email;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_email
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_email
    /]
);

sub looks_like_email ($) {

    my $email = shift || croak q/Value must be provided/;
    $email =~ /^
    $/ix
}
1;
