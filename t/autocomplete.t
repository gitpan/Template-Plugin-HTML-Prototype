use Test::More tests => 1;
use Template;

my $tt = Template->new;
my $out;
$tt->process(\*DATA, {}, \$out);

is($out,
q[<script type="text/javascript">
<!--
new Ajax.Autocompleter( 'foo', 'foo_auto_complete', 'http://localhost/ac',{ indicator: 'bar' })
//-->
</script>
]);

__DATA__
[% USE p = HTML.Prototype -%]
[% p.auto_complete_field('foo', { url => 'http://localhost/ac',
                                  indicator => 'bar' }) -%]
