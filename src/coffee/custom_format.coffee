((window, $, templates) ->

  templates._load 'cssPatch'
  frame = $ '#opener-html-main'
  keepFormatting = frame.data 'keep-formatting'

  if not keepFormatting
    return


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
      patchStyle()

) this, this.jQuery, this.templates
