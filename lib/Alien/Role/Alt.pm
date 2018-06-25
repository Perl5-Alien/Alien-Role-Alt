package Alien::Role::Alt;

use strict;
use warnings;
use 5.008001;
use Role::Tiny;
use Alien::Base 1.45;

# ABSTRACT: Alien::Base role that supports alternates
# VERSION

=head1 SYNOPSIS

From your L<alienfile>

 use alienfile;
 
 plugin 'PkgConfig' => (
   pkg_name => [ 'libfoo', 'libbar', ],
 );

Then in your base class:

 package Alien::Libfoo;
 
 use base qw( Alien::Base );
 use Role::Tiny::With qw( with );
 
 with 'Alien::Role::Alt';
 
 1;

Then you can use it:

 use Alien::Libfoo;
 
 my $cflags = Alien::Libfoo->alt('foo1')->cflags;
 my $libs   = Alien::Libfoo->alt('foo1')->libs;

=head1 DESCRIPTION

B<NOTE>: The capabilities that used to be provided by this role have been
moved into L<Alien::Base>'s core class.  This is an empty role provided
for compatibility only.  New code should not be using this class.

Some packages come with multiple libraries, and multiple C<.pc> files to
use with them.  This L<Role::Tiny> role can be used with L<Alien::Base>
to access different configurations.

=head1 METHODS

=head2 alt

 my $new_alien = $old_alien->alt($alt_name);

Returns an L<Alien::Base> instance with the alternate configuration.

=cut

1;
