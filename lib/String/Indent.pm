package String::Indent;

our $DATE = '2015-01-03'; # DATE
our $VERSION = '0.02'; # VERSION

use 5.010001;
use strict;
use warnings;

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       indent
               );

sub indent {
    my ($indent, $str, $opts) = @_;
    $opts //= {};

    if ($opts->{indent_blank_lines} // 1) {
        $str =~ s/^/$indent/mg;
    } else {
        $str =~ s/^([^\r\n]*\S[^\r\n]*)/$indent$1/mg;
    }
    $str;
}

1;
# ABSTRACT: String indenting routines

__END__

=pod

=encoding UTF-8

=head1 NAME

String::Indent - String indenting routines

=head1 VERSION

This document describes version 0.02 of String::Indent (from Perl distribution String-Indent), released on 2015-01-03.

=head1 FUNCTIONS

=head2 indent($indent, $str, \%opts) => STR

Indent every line in $str with $indent. Example:

 indent('  ', "one\ntwo\nthree") # "  one\n  two\n  three"

%opts is optional. Known options:

=over 4

=item * indent_blank_lines => BOOL (default 1)

If set to false, does not indent blank lines (i.e., lines containing only zero
or more whitespaces).

=back

=head1 SEE ALSO

L<Indent::String>, L<String::Nudge>

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/String-Indent>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-String-Indent>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=String-Indent>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
