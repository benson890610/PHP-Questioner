<?php 

ini_set("display_errors", "on");

session_start();

require "app/autoload.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatabile" content="IE=Edge">
    <meta name="author" content="Igor Djurdjic">
    <meta name="description" content="Complete PHP quiz and earn 100% points">
    <meta name="keywords", content="php, quiz, php quiz, complete php quiz">
    <link rel="stylesheet" href="style.css">
    <title>Complete PHP Quiz</title>
</head>
<body>

    <header class="main-header">
        <h1>PHP QUESTIONER</h1>
        <p>Test your knowlegde by completing all questions in sphere of PHP</p>
    </header>
    
    <?php 

        require "app/view/messages.php";

        if(Session::isSet("questions")) {
            Quiz::showQuestion();
        } else {
            Quiz::showStart();
            Quiz::showResults();
        }
        

    ?>

    <script type="text/javascript" src="app.js"></script>
</body>
</html>