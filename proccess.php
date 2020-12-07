<?php

ini_set("display_errors", "on");

session_start();

require "app/autoload.php";

if($_SERVER["REQUEST_METHOD"] === "POST") {

	$database = new Database;
	$session = new Session;
	$quiz = new Quiz($database, $session);

	if(isset($_POST["start"])) {

		$quiz->start();

	} elseif(isset($_POST["next"])) {

		$quiz->nextQuestion();

	} elseif(isset($_POST["prev"])) {

		$quiz->prevQuestion();

	} else {

		$quiz->finish();

	}

} else {

    redirect("index");

}