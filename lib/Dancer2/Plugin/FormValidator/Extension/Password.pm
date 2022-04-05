package Dancer2::Plugin::FormValidator::Extension::Password;

use Moo;

with 'Dancer2::Plugin::FormValidator::Role::Extension';

sub validators {
    return {
        password_simple => 'Dancer2::Plugin::FormValidator::Extension::Password::Simple',
        password_robust => 'Dancer2::Plugin::FormValidator::Extension::Password::Robust',
        password_hard   => 'Dancer2::Plugin::FormValidator::Extension::Password::Hard',
    };
}

1;