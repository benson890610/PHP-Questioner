<?php

	function error($msg = "") {
		
		if(empty($msg)) {
			$message = $_SESSION["error"];
			unset($_SESSION["error"]);

			return $message;
		}

		$_SESSION["error"] = $msg;

	}

	function success($msg = "") {
		
		if(empty($msg)) {
			$message = $_SESSION["success"];
			unset($_SESSION["success"]);

			return $message;
		}

		$_SESSION["success"] = $msg;

	}

	function is_error() {
		return isset($_SESSION["error"]);
	}

	function is_success() {
		return isset($_SESSION["success"]);
	}