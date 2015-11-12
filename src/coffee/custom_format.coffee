((window, $, templates) ->

  ESC = 27

  templates._load 'cssPatch'
  frame = $ '#opener-html-main'
  keepFormatting = frame.data 'keep-formatting'

  closeModal = (e) ->
    if e.which == ESC
      frame.closeModal()

  patchStyle = () ->
    embeddedPage = frame.contents()
    head = embeddedPage.find 'head'
    if not head.length
      head = $ '<head>'
      embeddedPage.prepend head
    head.append templates.cssPatch
    return

  frame.on 'load', () ->
    if frame.contents().prop('readyState') is 'complete'
      setTimeout () ->
        contentWin = frame[0].contentWindow
        contentWin.focus()
        frameContent = $ contentWin.window
        frameContent.on 'keydown', closeModal
      , 500

      if not keepFormatting
        return

      patchStyle()


) this, this.jQuery, this.templates
