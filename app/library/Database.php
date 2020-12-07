<?php

class Database {

	private $host = "__YOUR_HOST__";
	private $user = "__YOUR_USERNAME__";
	private $pass = "__YOUR_PASSWORD__";
	private $dbname = "__YOUR_DATABASE__";

	private $stmt;
	private $pdo;

	public function __construct() {

		$dsn = "mysql:host=" . $this->host . ";dbname=" . $this->dbname;
		$options = array(
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
			PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
			PDO::ATTR_PERSISTENT => true
		);

		try {

			$this->pdo = new PDO($dsn, $this->user, $this->pass, $options);


		} catch(PDOException $e) {

			$error = "<strong>Database connection error</strong> " . $e->getMessage();
			die($error);

		}

	}

	public function getQuestions() {

		$sql = "SELECT 
			qwa.id as question_id,
		    q.question,
		    oa.answer1,
		    oa.answer2,
		    oa.answer3,
		    oa.answer4,
		    ca.answer as correct_answer
		FROM questions_with_answers qwa
		INNER JOIN questions q ON qwa.question_id = q.id 
		INNER JOIN offered_answers oa ON qwa.answer_id = oa.id
		LEFT JOIN correct_answers ca ON oa.correct_answer_id = ca.id";

		return $this->pdo->query($sql)->fetchAll();

	}

}