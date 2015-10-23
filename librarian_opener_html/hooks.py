from bottle_utils.i18n import lazy_gettext as _

from .opener import html_opener


def initialize(supervisor):
    supervisor.exts.openers.register('html',
                                     label=_("Pages"),
                                     route=html_opener,
                                     content_type='html')
