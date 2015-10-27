import os

from bottle_utils.html import quoted_url

from librarian_content.decorators import with_meta
from librarian_core.contrib.templates.renderer import view


@view('openers/html')
@with_meta(abort_if_not_found=False)
def html_opener(path, meta):
    if not meta:
        html_url = quoted_url('files:direct', path=path)
        return dict(html_url=html_url, keep_formatting=False)

    file_path = os.path.join(meta.path, meta['html']['main'])
    html_url = quoted_url('files:direct', path=file_path)
    keep_formatting = meta['html']['keep_formatting']
    return dict(html_url=html_url, keep_formatting=keep_formatting)
