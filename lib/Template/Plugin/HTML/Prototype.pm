package Template::Plugin::HTML::Prototype;

use warnings;
use strict;
use Carp;

use HTML::Prototype;
use Template::Plugin;

our $VERSION = sprintf "%d.%02d", '$Revision: 1.3 $' =~ /(\d+)\.(\d+)/;

our @ISA = qw(HTML::Prototype Template::Plugin);

sub new {
  my ($class) = shift;

  return $class->SUPER::new;
}

1;
__END__

=head1 NAME

Template::Plugin::HTML::Prototype - Template Toolkit plugin for HTML::Prototype


=head1 SYNOPSIS

    [% USE p = HTML.Prototype -%]
    [% p.auto_complete_field('foo', { url      => 'http://localhost/ac',
                                     indicator => 'bar' }) -%]
  
=head1 DESCRIPTION

This module is a Template Toolkit plugin for the HTML::Prototype module.
HTML::Prototype is a Perl wrapper around the Prototype and script.aculo.us
Javascript libraries. This module therefore makes it easier to use
Prototype and script.aculo.us in web pages that are generated using the
Template Toolkit.

=head1 INTERFACE 

This plugin acts like any other Template Toolkit Plugin. To use it,
simply add a line like this to your template:

   [% USE p = HTML.Prototype -%]

You can then access any of the functions from HTML::Prototype using the
object C<p>.

   [% p.auto_complete_field('foo', { url      => 'http://localhost/ac',
                                     indicator => 'bar' }) -%]

For full details of the functions available, see the documentation for
the L<HTML::Prototype> module.

=head1 METHODS

=head2 new

Standard TT plugin constructor method.

=head1 DEPENDENCIES

=over 4

=item *

Template

=item *

HTML::Prototype

=back

You'll also need the Prototype and/or script.aculo.us Javascript libraries
installed on your web server.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-template-plugin-html-prototype@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

Dave Cross  C<< <dave@dave.org.uk> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2005, Dave Cross C<< <dave@dave.org.uk> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
