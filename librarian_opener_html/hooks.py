from .opener import html_opener


def initialize(supervisor):
    extensions = supervisor.config['html.extensions']
    supervisor.exts.openers.register('html', html_opener, extensions)
