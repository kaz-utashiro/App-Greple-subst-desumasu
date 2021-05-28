package App::Greple::subst::desumasu;

our $VERSION = "0.01";

use 5.014;
use warnings;
use utf8;

use App::Greple::subst;

use File::Share qw(:all);
$ENV{LOCAL_DICT} //= dist_dir __PACKAGE__ =~ s/::/-/gr;

1;

=encoding utf-8

=head1 NAME

App::Greple::subst::desumasu - Japanese DESU/MASU dictionary for App::Greple::subst

=head1 SYNOPSIS

    greple -Msubst::desumasu

=head1 DESCRIPTION

greple -Msubst module based on L<desumasu-converter>.

This is a simple checker/converter module for Japanese writing style
so called DUSU/MASU (ですます調: 敬体) and DEARU (である調: 常態).
This is not my own idea and the dictionary is based on:

    L<https://github.com/kssfilo/desumasu-converter>

See article L<https://kanasys.com/tech/722> for detail.

=head1 OPTIONS

=over 7

=item B<--desumasu>

=item B<--desumasu-n>

=item B<--desumasu-N>

Convert DESU/MASU to DEARU style.

です and ます sometimes followed by ね (NE), and that ね is removed
from converted result by default.  Option with B<-n> keep that ね, and
option with B<-N> igonore them.

=item B<--dearu>

=item B<--dearu-n>

=item B<--dearu-N>

Convert DEARU to DESU/MASU style.

=back

See L<App::Greple::subst> for other options.

=head1 SEE ALSO

L<App::Greple::subst>

=head1 AUTHOR

Kazumasa Utashiro

=head1 LICENSE

Copyright 2021 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__DATA__

option default -Msubst

option --mydict --dict $ENV{LOCAL_DICT}/$<shift>

option --desumasu --mydict desumasu.dict
option --dearu    --mydict dearu.dict

option --desumasu-n --mydict desumasu-keep-ne.dict
option --dearu-n    --mydict dearu-keep-ne.dict

option --desumasu-N --mydict desumasu-ignore-ne.dict
option --dearu-N    --mydict dearu-ignore-ne.dict
