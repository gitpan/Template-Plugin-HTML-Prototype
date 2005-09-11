use Test::More tests => 1;
use Template;

my $tt = Template->new;
my $out;
$tt->process(\*DATA, {}, \$out);

is($out,
q[<script type="text/javascript">
<!--
new Draggable( 'my_id', { constraint: vertical, revert: true } )
//-->
</script>
]);

__DATA__
[% USE p = HTML.Prototype -%]
[% p.draggable_element('my_id', { revert => 'true'
                                  constraint => 'vertical' }) -%]
