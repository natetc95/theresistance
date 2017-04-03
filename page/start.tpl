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
    <h1> Welcome to the Resistance! </h1><hr/>
    <p> Please select the number of players in your game to get started: </p>
    <form action="initialdata" method="post">
        <select name = "players">
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
        </select>
        <input type="submit" value="Let's Play"/>
    </form>
</body>
</html>