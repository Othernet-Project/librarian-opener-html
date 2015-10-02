from .opener import html_opener


def initialize(supervisor):
    supervisor.exts.openers.register('html', html_opener, content_type='html')
