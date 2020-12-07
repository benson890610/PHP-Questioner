<?php

class Session {

	public function save(string $key, $value) {
		$_SESSION[$key] = $value;
	}

	public function remove($key) {
		unset($_SESSION[$key]);
	}

	public function addPoints(int $num) {
		$_SESSION["points"][] = $num;
	}

	public function addZeroPoints() {
		$_SESSION["points"][] = 0;
	}

	public function generateNextQuestion() {
		$_SESSION["current"]++;
	}

	public function generatePrevQuestion() {
		$_SESSION["current"]--;
	}

	public static function questionsNotCompleted() {
		return (($_SESSION["total"] - 1) > $_SESSION["current"]);
	}

	public static function isSet(string $key) {

		return isset($_SESSION[$key]);

	}

}