<?php
	//세션 스타트
	session_start();

	//함수정의
	function alert($msg){
		echo "<script>alert('{$msg}');</script>";
	}

	function move($url = false){
		echo "<script>";
			echo $url ? "location.replace('{$url}');" : "history.back();";
		echo "</script>";
		exit;
	}

	function access($bool,$msg,$url = false){
		if ($bool) {
			alert($msg);
			move($url);
		}
	}

	function loginChk(){
		access(!isset($_SESSION['member']),"회원만 접근 가능합니다.");
	}

	function memberChk(){
		access(isset($_SESSION['member']),"이미 로그인 하셨습니다.");
	}
	
	//오토로드

	function __autoload($name){
		$name = strtolower($name);
		$name2 = preg_replace("/(model|application)(.*)/", "$1", $name);
		switch ($name2) {
			case 'model': $dir = _MODEL;  break;
			case 'application': $dir = _APP;  break;
			default: $dir = _CTR;  break;
		}
		require_once("{$dir}{$name}.php");
	}