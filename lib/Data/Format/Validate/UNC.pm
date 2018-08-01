package Data::Format::Validate::UNC;
our $VERSION = q/0.2/;

use Carp;
use base 'Exporter';

our @EXPORT_OK = qw/
    looks_like_absolute_unc
    looks_like_relative_unc
/;

our %EXPORT_TAGS = (
    q/all/ => [qw/
        looks_like_absolute_unc
        looks_like_relative_unc
    /]
);

sub looks_like_absolute_unc ($) {

    my $unc = shift || croak q/Value must be provided/;
    $unc =~ /^
        (?:[a-z]:|\\\\[a-z0-9_.\$]+\\[a-z0-9_.\$]+)\\
        (?:[^\\\/:*?"<>|\r\n]+\\)*
        [^\\\/:*?"<>|\r\n]*
    $/ix
}

sub looks_like_relative_unc ($) {

    my $unc = shift || croak q/Value must be provided/;
    $unc =~ /^
        (?:
            (?:[a-z]:|\\\\[a-z0-9_.\$]+\\[a-z0-9_.\$]+)\\
            |
            \\?[^\\\/:*?"<>|\r\n]+\\?
        )
        (?:[^\\\/:*?"<>|\r\n]+\\)*
        [^\\\/:*?"<>|\r\n]*
    $/ix
}
1;
