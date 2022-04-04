use strict;
use warnings;
use utf8::all;
use Test::More tests => 5;

use Dancer2::Plugin::FormValidator::Extension::Password::Simple;

my $validator;

# TEST 1.
## Dancer2::Plugin::FormValidator::Extension::Password::Simple.

$validator = Dancer2::Plugin::FormValidator::Extension::Password::Simple->new;

is(
    ref $validator->message,
    'HASH',
    'TEST 1: Dancer2::Plugin::FormValidator::Extension::Password::Simple messages hash'
);

is(
    $validator->stop_on_fail,
    0,
    'TEST 1: Dancer2::Plugin::FormValidator::Extension::Password::Simple stop_on_fail',
);

isnt(
    $validator->validate('password', {password => 'fg12-Af'}),
    1,
    'TEST 1: Dancer2::Plugin::FormValidator::Extension::Password::Simple not valid',
);

isnt(
    $validator->validate('password', {password => 'fg12adsflAf'}),
    1,
    'TEST 1: Dancer2::Plugin::FormValidator::Extension::Password::Simple not valid',
);

is(
    $validator->validate('password', {password => 'fg12@Afl'}),
    1,
    'TEST 1: Dancer2::Plugin::FormValidator::Extension::Password::Simple valid',
);