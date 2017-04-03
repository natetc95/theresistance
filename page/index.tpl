<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css" type="text/css">
    <title>Document</title>
    <script src='js'></script>
</head>
<body>
    <h1> Mission #{{roundn}}</h1><hr/>
    <p> {{cap}} </p>
    <form action="/py/login" method="post">
        % for i in range(0, num):
            <input type="checkbox" name="{{chr(i+65)}}" /> Player {{chr(i+65)}} <br/>
        % end
        <br/><input type="submit"/>
    </form>
</body>
</html>