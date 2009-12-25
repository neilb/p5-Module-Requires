package Module::Requires;
use strict;
use warnings;
our $VERSION = '0.01';

# Foo version 0.04 required--this is only version 0.03

1;
__END__

=head1 NAME

Module::Requires - Checks to see if the module can be loaded

=head1 SYNOPSIS

more simply

  use Module::Requires 'Class::Trigger', 'Class::Accessor';
  use Class::Trigger;
  use Class::Accessor;

with version Checks

  use Module::Requires
    'Class::Trigger' => 0.13,
    'Class::Accessor';
  use Class::Trigger;
  use Class::Accessor;

detailed check of version
  # It is more than 0.10 and is except 0.12.
  use Module::Requires
    'Class::Trigger' => [ '>' => 0.10, '!=', 0.12 ],
    'Class::Accessor';
  use Class::Trigger;
  use Class::Accessor;

with autoloader

  use Module::Requires -autoload,
    'Class::Trigger', 'Class::Accessor';

with autoloader and import params

  use Module::Requires -autoload,
    'Class::Trigger' => { import => [qw/ foo bar baz /] },
    'Class::Accessor';

with autoloader and import params and version check

  use Module::Requires -autoload,
    'Class::Trigger' => {
        import  => [qw/ foo bar baz /],
        version => [ '>' => 0.10, '!=', 0.12 ],
    },
    'Class::Accessor';

=head1 DESCRIPTION

Module::Requires is Checks to see if the module can be loaded.

required modules warns of not installed if Inside of Makefile.PL With feature When specifying require module.

When writing modules, such as plugin, required modules which runs short is displayed on a user.

=head1 AUTHOR

Kazuhiro Osawa E<lt>yappo <at> shibuya <döt> plE<gt>

=head1 SEE ALSO

L<Test::Requires>, idea by L<DBIx::Class::Storage::DBI::Replicated>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
