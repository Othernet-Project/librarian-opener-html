<%def name="opener_display()">
    <iframe id="opener-main" class="opener-main" src="${html_url}" data-keep-formatting="${keep_formatting}"></iframe>
</%def>

<%def name="meta_display()">
    % if meta:
    ## Translators, attribution line appearing in the content list
    <p class="attrib">
    % if meta.publisher:
    ${_('%(date)s by %(publisher)s.') % dict(date=meta.timestamp.strftime('%Y-%m-%d'), publisher=meta.publisher)}
    % else:
    ${meta.timestamp.strftime('%Y-%m-%d')}
    % endif
    ${th.readable_license(meta.license)}
    </p>
    % endif
</%def>

<%def name="extra_head()"></%def>

<%def name="extra_scripts()">
<script id="openerCssPatch" type="text/template">
    <link rel="stylesheet" type="text/css" href="${assets['css/htmlpatcher']}" />
</script>
</%def>
