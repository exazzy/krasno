<!doctype html>
<html>
    <head>
        <title>Тут грибы не растут</title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
        <ul class="errors">
            <li>Четыреста четыре</li>
            <li>Поищи где-нибуть в другом месте, но не тут ${request.forwardURI}</li>
        </ul>
    </body>
</html>
