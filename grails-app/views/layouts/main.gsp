<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <r:layoutResources />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Pace Trading System"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    %{--<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">--}%
          <link rel="shortcut icon" href="${resource(dir: 'images', file: 'xcode.ico')}" type="image/x-icon">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">




    <g:javascript library="application"/>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js', file: 'jquery-1.9.1.js')}'></script>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js', file: 'bootstrap.js')}'></script>





    <g:layoutHead/>

</head>
<body >
%{--<body oncontextmenu="return false">--}%

<div >
    <g:render template="/layouts/header"/>
</div>
%{--TODO HEADER DONE--}%

<div style="width: 100%; margin:  0 0">
    <g:layoutBody/>
</div>

%{--TODO: INTEGRATING FOOTER--}%
%{--<div >--}%
%{--<g:render template="/layouts/footer"/>--}%
%{--</div>--}%
<r:layoutResources />


</body>

</html>
