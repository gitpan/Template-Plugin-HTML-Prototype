use Test::More tests => 1;
use Template;

my $tt = Template->new;
my $out;
$tt->process(\*DATA, {}, \$out);

is($out,
q[<ul><li>foo<li>bar<li>baz</ul>
]);

__DATA__
[% USE p = HTML.Prototype -%]
[% p.auto_complete_result([ 'foo', 'bar', 'baz' ]) -%]
