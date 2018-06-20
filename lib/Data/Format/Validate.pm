package Data::Format::Validate;
our $VERSION = '0.1';
1;

=encoding utf8

=head1 NAME

Data::Format::Validate - A data validating module.

=head1 SYNOPSIS

Module that validate data like IP adressess.

=head1 Utilities

=over 4

=item IP (ipv4)

    use Data::Format::Validate::IP 'looks_like_ipv4';

    looks_like_ipv4 '127.0.0.1';        # 1
    looks_like_ipv4 '192.168.0.1';      # 1
    looks_like_ipv4 '255.255.255.255';  # 1

    looks_like_ipv4 '255255255255';     # 0
    looks_like_ipv4 '255.255.255.256';  # 0

=item IP (ipv6)

    use Data::Format::Validate::IP 'looks_like_ipv6';

    looks_like_ipv6 '1762:0:0:0:0:B03:1:AF18';                  # 1
    looks_like_ipv6 '1762:ABC:464:4564:0:BA03:1000:AA1F';       # 1
    looks_like_ipv6 '1762:4546:A54f:d6fd:5455:B03:1fda:dFde';   # 1

    looks_like_ipv6 '17620000AFFFB031AF187';                    # 0
    looks_like_ipv6 '1762:0:0:0:0:B03:AF18';                    # 0
    looks_like_ipv6 '1762:0:0:0:0:B03:1:Ag18';                  # 0
    looks_like_ipv6 '1762:0:0:0:0:AFFFB03:1:AF187';             # 0


=back

=head1 SOURCE AVAILABILITY

This source is in Github:

	https://github.com/rozcovo/Data-Format-Validate

=head1 AUTHOR

Created by Israel Batista <<israel.batista@univem.edu.br>>
