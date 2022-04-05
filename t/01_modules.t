use strict;
use warnings;
use Test::More tests => 3;

# TEST 1.
use_ok('Dancer2::Plugin::FormValidator::Extension::Password');

# TEST 2.
use_ok('Dancer2::Plugin::FormValidator::Extension::Password::Simple');

# TEST 3.
use_ok('Dancer2::Plugin::FormValidator::Extension::Password::Robust');
