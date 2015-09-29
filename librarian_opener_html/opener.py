import os

from bottle import request


def html_opener(path, meta):
    if not meta:
        return dict(html_url=request.app.get_url('files:direct', path=path),
                    keep_formatting=False)

    file_path = os.path.join(meta.path, meta['html']['main'])
    html_url = request.app.get_url('files:direct', path=file_path)
    keep_formatting = meta['html']['keep_formatting']
    return dict(html_url=html_url, keep_formatting=keep_formatting)
