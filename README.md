# Alien::Role::Alt [![Build Status](https://secure.travis-ci.org/Perl5-Alien/Alien-Role-Alt.png)](http://travis-ci.org/Perl5-Alien/Alien-Role-Alt)

(Deprecated) Alien::Base role that supports alternates

# SYNOPSIS

From your [alienfile](https://metacpan.org/pod/alienfile)

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

# DESCRIPTION

**NOTE**: The capabilities that used to be provided by this role have been
moved into [Alien::Base](https://metacpan.org/pod/Alien::Base)'s core class.  This is an empty role provided
for compatibility only.  New code should not be using this class.

Some packages come with multiple libraries, and multiple `.pc` files to
use with them.  This [Role::Tiny](https://metacpan.org/pod/Role::Tiny) role can be used with [Alien::Base](https://metacpan.org/pod/Alien::Base)
to access different configurations.

# METHODS

## alt

    my $new_alien = $old_alien->alt($alt_name);

Returns an [Alien::Base](https://metacpan.org/pod/Alien::Base) instance with the alternate configuration.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017,2018,2019 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
