<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Krasno"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>
    <g:render template="/header"/>
    <g:layoutBody/>
    <asset:javascript src="application.js"/>

    <script>
        $(document).ready(function() {
    
            var cars = ['приобье', 'приозерный', 'опричное'];
            
            // Constructing the suggestion engine
            var cars = new Bloodhound({
                datumTokenizer: Bloodhound.tokenizers.whitespace,
                queryTokenizer: Bloodhound.tokenizers.whitespace,
                local: cars
            });
            
            $('.typeahead').typeahead(
                {
                hint: true,
                highlight: true,
                minLength: 1
            },
            {
                name: 'cars',
                source: cars
            });
        });
    </script>
</body>
</html>
