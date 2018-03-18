<?php
	Class Application{

		function __construct(){
			$this->getParam();
			$ctr = "{$this->param->type}Controller";
			new $ctr($this->param);
		}

		function getParam(){//url 주소 변수화
			if (isset($_GET['param'])) {
				$get = explode("/", $_GET['param']);
			}
			$param['type'] = isset($get[0]) && $get[0] != "" && !is_numeric($get[0]) ? $get[0] : "main";
			$param['page'] = isset($get[1]) && $get[1] != "" ? $get[1] : NULL;
			$param['idx'] = isset($get[2]) && $get[2] != "" ? $get[2] : NULL;
			$param['page_num'] = isset($get[0]) && $get[0] != "" && is_numeric($get[0]) ? $get[0] : "1";
			$this->param = (object)$param;
		}

		function getUri(){//uri 주소 변수화
			if (isset($_SERVER['REQUEST_URI'])) {
				$uri = explode("?s=", $_SERVER['REQUEST_URI']);
			}
			$uri['search'] = isset($uri[1]) && $uri[1] != "" ? urldecode(trim($uri[1])) : NULL;
			$uri['search'] = htmlspecialchars($uri['search'],ENT_QUOTES);
			return $uri['search'];
		}

	}