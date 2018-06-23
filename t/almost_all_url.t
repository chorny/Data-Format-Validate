#!/usr/bin/perl
use 5.008;
use strict;
use warnings;

use Test::Simple tests => 2;
use Data::Format::Validate::URL 'looks_like_url';

ok(looks_like_url 'http://google.com');
ok(looks_like_url 'https://duckduckgo.com');