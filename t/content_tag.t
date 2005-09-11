use Test::More tests => 1;
use Template;

my $tt = Template->new;
my $out;
$tt->process(\*DATA, {}, \$out);

is($out,
q[<a href="http://dave.org.uk/">Home</a>
]);

__DATA__
[% USE p = HTML.Prototype -%]
[% p.content_tag('a', 'Home', { href=> 'http://dave.org.uk/' }) -%]
