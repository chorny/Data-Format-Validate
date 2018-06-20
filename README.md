# Data::Format::Validate
Data::Format::Validate is a Perl module to validate data

## Instalation

### CPAN

This module is avaliable on CPAN, to install it, just run:

<pre>
  cpan install Data::Format::Validate
</pre>

### Manual

Standard process for building & installing modules:

<pre>
  perl Build.PL
  ./Build
  ./Build test
  ./Build install
</pre>

Or, if you're on a platform (like DOS or Windows) that doesn't require the "./" notation, you can do this:

<pre>
  perl Build.PL
  Build
  Build test
  Build install
</pre>

## Examples

### IP

#### IPV4
<pre>
  use Data::Format::Validate::IP 'looks_like_ipv4';

  looks_like_ipv4 '127.0.0.1';        # 1
  looks_like_ipv4 '192.168.0.1';      # 1
  looks_like_ipv4 '255.255.255.255';  # 1

  looks_like_ipv4 '255255255255';     # 0
  looks_like_ipv4 '255.255.255.256';  # 0
</pre>

#### IPV6
<pre>
  use Data::Format::Validate::IP 'looks_like_ipv6';

  looks_like_ipv6 '1762:0:0:0:0:B03:1:AF18';                  # 1
  looks_like_ipv6 '1762:ABC:464:4564:0:BA03:1000:AA1F';       # 1
  looks_like_ipv6 '1762:4546:A54f:d6fd:5455:B03:1fda:dFde';   # 1

  looks_like_ipv6 '17620000AFFFB031AF187';                    # 0
  looks_like_ipv6 '1762:0:0:0:0:B03:AF18';                    # 0
  looks_like_ipv6 '1762:0:0:0:0:B03:1:Ag18';                  # 0
  looks_like_ipv6 '1762:0:0:0:0:AFFFB03:1:AF187';             # 0
</pre>