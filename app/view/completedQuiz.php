<?php 

	if(Session::isSet("completed")) {
		echo $_SESSION["completed"];
	}

?>