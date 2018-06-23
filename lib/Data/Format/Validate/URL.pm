package Data::Format::Validate::URL;
our $VERSION = q/0.1/;

use Carp;
use base q/Exporter/;

our @EXPORT_OK = qw/
    looks_like_url
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_url
    /]
);

our $DEFAULT_CONTEXT = q/almost_all/;

our @POSSIBLE_CONTEXTS = qw/
    almost_all
    require_domain_name
    allow_protocol_omit
    image_file
/;

sub is_possible_context {

    my $context = shift;
    scalar grep { $context eq $_ } @POSSIBLE_CONTEXTS
}

sub almost_all {

    $_ = shift;
    /^(https?|ftp|file):\/\/.+$/i
}

sub require_domain_name {

    $_ = shift;
    /^
    (https?|ftp):\/\/
    [a-z0-9-]+(\.[a-z0-9-]+)+
    ([\/?].+)?
    $/ix
}

sub allow_protocol_omit {

    $_ = shift;
    /^
    ((https?|ftp):\/\/|(www|ftp)\.)
    [a-z0-9-]+(\.[a-z0-9-]+)+
    ([\/?].*)?
    $/ix
}

sub image_file {

    $_ = shift;
    /^
    (https?|ftp):\/\/
    [a-z0-9-]+(\.[a-z0-9-]+)+
    (\/[\w-]+)*
    \/[\w-]+\.(gif|png|jpg)
    $/ix
}

sub looks_like_url {

    my $value = shift || croak q/Value must be provided/;
    my $context = shift || $DEFAULT_CONTEXT;

    croak qq/Option '$context' for looks_like_url does not exist/
        unless is_possible_context $context;

    &$context($value)
}
1;