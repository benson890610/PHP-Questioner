<?php

class Quiz {

	private $db;
	private $session;
	private const POINTS = 10;
	private const MAX_POINTS = 15;
	private $totalQuestions;

	public function __construct(Database $database, Session $session) {
		$this->db = $database;
		$this->session = $session;
	}

	public function start() {

		$questions = $this->db->getQuestions();

		$this->session->save("questions", $questions);
		$this->session->save("points", array());
		$this->session->save("current", 0);
		$this->session->save("total", count($questions));

		redirect("index");

	}

	public function showQuestion() {

		$n = $_SESSION["current"];

		$currentQuestion = $_SESSION["questions"][$n];
		$currentNum = ($n + 1);
		$currentNum = $currentNum . " / " . $_SESSION["total"];
		$question = htmlspecialchars($currentQuestion["question"]);

		$answer1 = htmlspecialchars($currentQuestion["answer1"]);
		$answer2 = htmlspecialchars($currentQuestion["answer2"]);
		$answer3 = is_null($currentQuestion["answer3"]) ? null : htmlspecialchars($currentQuestion["answer3"]);
		$answer4 = is_null($currentQuestion["answer4"]) ? null : htmlspecialchars($currentQuestion["answer4"]);
		$correctAnswer = htmlspecialchars($currentQuestion["correct_answer"]);

		require "app/view/question.php";

	}

	public function nextQuestion() {
		if(Session::questionsNotCompleted()) {
			$this->calculateQuestion();
			$this->session->generateNextQuestion();
		}
		
		redirect("index");

	}

	public function prevQuestion() {
		array_pop($_SESSION["points"]);
		$this->session->generatePrevQuestion();

		redirect("index");
	}

	public static function showStart() {
		require "app/view/startQuiz.php";
	}

	public static function showResults() {
		require "app/view/completedQuiz.php";
		if(isset($_SESSION["completed"]))
		unset($_SESSION["completed"]);
	}

	public function finish() {
		$this->calculateQuestion();
		$results = $this->calculateResults();
		$totalPoints = 0;
		for($i = 0; $i < count($_SESSION["points"]); $i++) {
			$totalPoints += $_SESSION["points"][$i];
		}

		if($totalPoints < 50) {
			$results = "<div class='completed bad'>" . $results . "</div>";
		} elseif($totalPoints >= 50 && $totalPoints < 100) {
			$results = "<div class='completed average'>" . $results . "</div>";
		} else {
			$results = "<div class='completed exceptional'>" . $results . "</div>";
		}

		$this->session->save("completed", $results);

		$this->session->remove("questions");
		$this->session->remove("points");
		$this->session->remove("current");
		$this->session->remove("total");

		redirect("index");		
	}

	private function calculateResults() {
		$maxPoints = self::MAX_POINTS * self::POINTS;
		$totalQuestions = $_SESSION["total"];
		$totalPoints = 0;
		$totalCorrectAnswers = 0;
		$percentage = 0;

		for($i = 0; $i < count($_SESSION["points"]); $i++) {
			$totalPoints += $_SESSION["points"][$i];
		}

		$percentage = ($totalPoints / $totalQuestions) * self::POINTS;
		$percentage = ceil($percentage);
		$totalCorrectAnswers =  $totalPoints / self::POINTS;

		$string = "Your score is <strong>{$percentage}%</strong><br>You have earned <strong>{$totalPoints}</strong> out of <strong>{$maxPoints}</strong> points<br>You answered correct on <strong>{$totalCorrectAnswers}</strong> out of <strong>{$totalQuestions}</strong> questions";
		return $string;
	}

	private function calculateQuestion() {
		if(!isset($_POST["answer"])) {
			error("Please answer the question in order to continue");
			redirect("index");
		}

		$n = $_SESSION["current"];
		$currentQuestion = $_SESSION["questions"][$n];

		$userAnswer = '' . trim(htmlspecialchars($_POST["answer"])) . '';
		$correctAnswer = '' . trim(htmlspecialchars($currentQuestion["correct_answer"])) . '';
		
		if($userAnswer === $correctAnswer) {
			$this->session->addPoints(self::POINTS);
		} else {
			$this->session->addZeroPoints();
		}
	}

}