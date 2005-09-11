use Test::More tests => 1;
use Template;

my $tt = Template->new;
my $out;
$tt->process(\*DATA, {}, \$out);

is($out,
q[<script type="text/javascript">
<!--
Droppables.add( 'my_id', { accept: 'some_id', hoverclass: 'hoversmocherpocher', onDrop: function(element){ new Ajax.Request(  'http://example.com/', { parameters: 'id=' + encodeURIComponent(element.id),asynchronous: 1 } ) }, type: '' } )
//-->
</script>
]);

__DATA__
[% USE p = HTML.Prototype -%]
[% p.drop_receiving_element('my_id', { url => 'http://example.com/'
                                       accept => 'some_id' }
                                       overlap => 'vertical') -%]
