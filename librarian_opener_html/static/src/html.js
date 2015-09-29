/*jslint browser: true*/
(function ($) {
    'use strict';
    $.openers = $.openers || {};
    $.openers.html = function () {
        var head,
            openerFrame = $(document).find('#opener-main'),
            keepFormatting = openerFrame.data('keep-formatting'),
            openerCssPatch = $(window.templates.openerCssPatch);

        function applyStylePatch() {
            var openerDoc = openerFrame.contents();
            if (!keepFormatting) {
                head = openerDoc.find('head');
                if (head.length === 0) {
                    head = $('<head></head>');
                    openerDoc.append(head);
                }
                head.append(openerCssPatch);
            }
        }

        openerFrame.load(applyStylePatch);
        if (openerFrame.contents().prop('readyState') === 'complete') {
            applyStylePatch();
        }
    };
}(this.jQuery));
