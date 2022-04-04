package Dancer2::Plugin::FormValidator::Extension::Password;

use Moo;

with 'Dancer2::Plugin::FormValidator::Role::Extension';

sub validators {
    return {
        password_simple => 'Dancer2::Plugin::FormValidator::Extension::Password::Simple',
    };
}

1;