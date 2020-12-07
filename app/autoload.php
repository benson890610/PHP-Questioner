<?php

    require "helpers/url.php";
    require "helpers/message.php";

    spl_autoload_register(function($className){

    	if(file_exists("app/library/" . $className . ".php")) {
    		require "app/library/" . $className . ".php";
    	}

    });