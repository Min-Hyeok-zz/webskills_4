<?php
	//테러방지
	$ip = $_SERVER['REMOTE_ADDR'];
	$arr = ['10.114.164.202','::1'];
	if (!in_array($ip, $arr)) {
		echo "<script>location.href='http://www.pantech.co.kr/'</script>";
		exit;
	}

	//상수정의
	define("_ROOT", __DIR__."/");
	define("_PUBLIC", _ROOT."public/");
	define("_APP", _ROOT."application/");
	define("_MODEL", _APP."model/");
	define("_VIEW", _APP."view/");
	define("_CTR", _APP."controller/");
	define("_CONFIG", _APP."config/");
	$url = str_replace("index.php", "", "http://{$_SERVER['HTTP_HOST']}"."/");
	define("_URL", $url);
	define("_IMG", _URL."public/img/");
	define("_CSS", _URL."public/css/");
	define("_UPLOAD", _URL."public/upload/");

	require_once(_CONFIG."config.php");
	new Application();