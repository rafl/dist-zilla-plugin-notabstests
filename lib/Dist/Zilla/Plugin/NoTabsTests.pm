package Dist::Zilla::Plugin::NoTabsTests;
# ABSTRACT: Release tests making sure hard tabs aren't used

use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::InlineFiles';

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing
the following files:

=for :list
* xt/release/no-tabs.t
a standard Test::NoTabs test

=cut

__PACKAGE__->meta->make_immutable;

1;

__DATA__
___[ xt/release/no-tabs.t ]___
use strict;
use warnings;
use Test::More;

eval 'use Test::NoTabs';
plan skip_all => 'Test::NoTabs required' if $@;

all_perl_files_ok();
