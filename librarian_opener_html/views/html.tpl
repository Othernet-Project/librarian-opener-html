<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" type="text/css" href="${assets['css/html']}" />
    </head>
    <body>
        <iframe id="opener-main" class="opener-main" src="${html_url}" data-keep-formatting="${keep_formatting}"></iframe>
        <script id="css-patch" type="text/template">
            <link rel="stylesheet" type="text/css" href="${assets['css/htmlpatch']}" />
        </script>
        <script type="text/javascript" src="${assets['js/html']}"></script>
    </body>
</html>
