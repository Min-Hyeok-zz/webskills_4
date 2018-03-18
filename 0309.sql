-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 18-03-17 08:55
-- 서버 버전: 10.1.30-MariaDB
-- PHP 버전: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `0309`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `idx` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `subject`, `name`, `category`, `content`, `img`, `date`, `hit`) VALUES
(1, '제목 이다 ', '김팬택', '영화', '영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요영화가 정말 재미 있어요', '', '2018-03-15 14:48:27', 0),
(2, '으히헤헤', '네이임', '스포츠', '#review { width: 1100px; margin: 0 auto; overflow: hidden; margin-bottom: 50px; border-top: 1px solid #c7c7c7; }\r\n#review > h3 { padding: 15px 0; border-bottom: 1px solid #c7c7c7; padding-left: 10px; }\r\n#review > form { padding: 5px 10px; }\r\n#review > form > div { width: 100%; overflow: hidden; }\r\n#review > form > div > h4 { width: 5%; text-align: center; float: left; font-weight: bold; padding: 10px 0; }\r\n#review > form > div > p { float: left; padding: 7px 0; margin-left: 15px;  font-weight: bold; color: #aaa; }\r\n#review > form > div > select { float: left; padding: 5px; margin-top: 2px; width: 20%; }\r\n#review > form > div > #title { float: left; padding: 5px; margin-top: 2px; width: 20%; }\r\n#review > form > textarea { float: none; width: 85%; padding: 10px; margin-left: 10px; height: 60px; }\r\n#review > form > button { width: 150px; height: 60px; float: right; background: white; border: 1px solid #f17324; color: #f17324; }\r\n#review > h3 { clear: both; padding: 15px 0; border-top: 1px solid #c7c7c7; padding-left: 10px;}\r\n#review > h2 { padding: 20px 0; }\r\n#review > ul { width: 100%; overflow: hidden; 20%; }\r\n#review > ul > li:first-child { border-top: none; }\r\n#review > ul > li { overflow: hidden; list-style: none; padding: 10px; border-top: 1px solid #c7c7c7; border-bottom: 1px solid #c7c7c7; }\r\n#review > ul > li:first-child { border-bottom: none; }\r\n#review > ul > li:last-child { border-top: none; }\r\n#review > ul > li > h4 { font-size: 18px; padding: 10px 0; border-bottom: 1px solid #b1b1b1; margin-bottom: 13px; }\r\n#review > ul > li > h4 > span { margin-left: 10px; }\r\n#review > ul > li > .texts { float: left; width: 70%; }\r\n#review > ul > li > #reinfo { float: right; width: 25%; }\r\n#review > ul > li > #reinfo > .writer { width: 100%; overflow: hidden; border-bottom: 1px solid #c7c7c7; padding-bottom: 8px; }\r\n#review > ul > li > #reinfo > .writer > .retitle { color: #a2a2a2; line-height: 25px; }\r\n#review > ul > li > #reinfo > .wdate { width: 100%; overflow: hidden; padding-top: 8px;}\r\n#review > ul > li > #reinfo > .wdate > .retitle { color: #a2a2a2; line-height: 25px; }', '', '2018-03-15 16:29:56', 0),
(3, 'ㅇㅁㄴㅇ레ㅐ나레ㅇㅁㄴㅇ레ㅐ나레ㅇㅁㄴㅇ레ㅐ나레', '김팬택', '스포츠', 'ㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓㄴㅇ리ㅏㄴ엏ㄴㅇ히ㅏㅓ', '', '2018-03-15 17:21:05', 0),
(4, 'ㅁㅇㄴㅇㅁㄴㄹ', '김애플', 'IT', '<?php\r\n	Class Controller{\r\n\r\n		function __construct($param){\r\n			$this->param = $param;\r\n			$model = \"Model_{$this->param->type}\";\r\n			new $model($this->param);\r\n			$this->db = new $model($this->param);\r\n			$this->index();\r\n		}\r\n\r\n		function index(){\r\n			$method = isset($this->param->page) ? $this->param->page : \"basic\";\r\n			if (method_exists($this, $method)) $this->$method();\r\n			$this->header();\r\n			$this->content();\r\n			$this->footer();\r\n		}\r\n\r\n		function header(){\r\n			require_once(_VIEW.\"header.php\");\r\n		}\r\n\r\n		function content(){\r\n			if (isset($this->param->page)) {\r\n				require_once(_VIEW.\"{$this->param->type}/{$this->param->page}\");\r\n			} else{\r\n				require_once(_VIEW.\"main.php\");\r\n			}\r\n		}\r\n\r\n		function footer(){\r\n			require_once(_VIEW.\"footer.php\");\r\n		}\r\n\r\n	}<?php\r\n	Class Controller{\r\n\r\n		function __construct($param){\r\n			$this->param = $param;\r\n			$model = \"Model_{$this->param->type}\";\r\n			new $model($this->param);\r\n			$this->db = new $model($this->param);\r\n			$this->index();\r\n		}\r\n\r\n		function index(){\r\n			$method = isset($this->param->page) ? $this->param->page : \"basic\";\r\n			if (method_exists($this, $method)) $this->$method();\r\n			$this->header();\r\n			$this->content();\r\n			$this->footer();\r\n		}\r\n\r\n		function header(){\r\n			require_once(_VIEW.\"header.php\");\r\n		}\r\n\r\n		function content(){\r\n			if (isset($this->param->page)) {\r\n				require_once(_VIEW.\"{$this->param->type}/{$this->param->page}\");\r\n			} else{\r\n				require_once(_VIEW.\"main.php\");\r\n			}\r\n		}\r\n\r\n		function footer(){\r\n			require_once(_VIEW.\"footer.php\");\r\n		}\r\n\r\n	}', '', '2018-03-15 17:22:34', 0),
(5, 'ㅁㄴㄹㄴㅇㅎㅎㅇㅀㅇㅀ', '김삼성', '영화', '*{\r\n	margin: 0;\r\n	padding: 0;\r\n	list-style: none;\r\n	text-decoration: none;\r\n	outline: none;\r\n	color: inherit;\r\n	box-sizing: border-box;\r\n}\r\n	html,body{\r\n		overflow-x: hidden;\r\n		height: 100%;\r\n	}\r\n		.pn{\r\n			width: 25px;\r\n			height: 25px;\r\n			display: block;\r\n			background: #000;\r\n			color: #fff;\r\n			line-height: 25px;\r\n			font-size: 14px;\r\n			margin: 0 5px;\r\n		}\r\n			.pageing{\r\n				max-width: 1200px;\r\n				width: 100%;\r\n				display: flex;\r\n				margin: 0 auto;\r\n				justify-content: space-around;\r\n				text-align: center;\r\n				margin-top: 50px;\r\n			}\r\n			.img{\r\n				width: 100%;\r\n				height: 200px;\r\n			}\r\n\r\n	/* header */\r\n\r\nheader{\r\n	height: 50px;\r\n	background: #000;\r\n	color: #fff;\r\n	overflow: hidden;\r\n}\r\nnav{\r\n	max-width: 1000px;\r\n	width: 100%;\r\n	height: 100%;\r\n	margin: 0 auto;\r\n	display: flex;\r\n	align-items: center;\r\n	justify-content: space-around;\r\n}\r\n	nav > ul{\r\n		display: flex;\r\n	}\r\n		nav > ul > li > a{\r\n			transition: .3s;\r\n			padding: 20px;\r\n		}\r\n		nav > ul > li > a:hover{\r\n			background: #fff;\r\n			color: #000;\r\n		}\r\n.logo{\r\n	cursor: pointer;\r\n}\r\n\r\n	/* main */\r\n\r\ntable{\r\n	max-width: 1200px;\r\n	width: 100%;\r\n	margin: 0 auto;\r\n	margin-top: 100px;\r\n	text-align: center;\r\n	position: relative;\r\n}\r\n.button{\r\n	display: block;\r\n	width: 100px;\r\n	height: 35px;\r\n	text-align: center;\r\n	line-height: 35px;\r\n	background: #000;\r\n	color: #fff;\r\n	margin: 0 auto;\r\n}\r\n\r\n	/* footer */\r\n\r\nfooter{\r\n	width: 100%;\r\n	height: 30px;\r\n	background: #000;\r\n	color: #fff;\r\n	text-align: center;\r\n	line-height: 30px;\r\n}\r\n\r\n	/* form */\r\n\r\n#form{\r\n	max-width: 600px;\r\n	width: 100%;\r\n	margin: 0 auto;\r\n	margin-top: 50px;\r\n}\r\n	#form > p{\r\n		font-size: 18px;\r\n		text-align: center;\r\n	}\r\n	\r\n#form > input{\r\n	width: 100%;\r\n	height: 40px;\r\n	margin: 10px 0;\r\n	padding: 0 10px;\r\n}\r\n	#form > input[type=submit]{\r\n		border: none;\r\n		background: #000;\r\n		color: #fff;\r\n		cursor: pointer;\r\n	}\r\ntextarea{\r\n	padding: 10px;\r\n	width: 100%;\r\n}*{\r\n	margin: 0;\r\n	padding: 0;\r\n	list-style: none;\r\n	text-decoration: none;\r\n	outline: none;\r\n	color: inherit;\r\n	box-sizing: border-box;\r\n}\r\n	html,body{\r\n		overflow-x: hidden;\r\n		height: 100%;\r\n	}\r\n		.pn{\r\n			width: 25px;\r\n			height: 25px;\r\n			display: block;\r\n			background: #000;\r\n			color: #fff;\r\n			line-height: 25px;\r\n			font-size: 14px;\r\n			margin: 0 5px;\r\n		}\r\n			.pageing{\r\n				max-width: 1200px;\r\n				width: 100%;\r\n				display: flex;\r\n				margin: 0 auto;\r\n				justify-content: space-around;\r\n				text-align: center;\r\n				margin-top: 50px;\r\n			}\r\n			.img{\r\n				width: 100%;\r\n				height: 200px;\r\n			}\r\n\r\n	/* header */\r\n\r\nheader{\r\n	height: 50px;\r\n	background: #000;\r\n	color: #fff;\r\n	overflow: hidden;\r\n}\r\nnav{\r\n	max-width: 1000px;\r\n	width: 100%;\r\n	height: 100%;\r\n	margin: 0 auto;\r\n	display: flex;\r\n	align-items: center;\r\n	justify-content: space-around;\r\n}\r\n	nav > ul{\r\n		display: flex;\r\n	}\r\n		nav > ul > li > a{\r\n			transition: .3s;\r\n			padding: 20px;\r\n		}\r\n		nav > ul > li > a:hover{\r\n			background: #fff;\r\n			color: #000;\r\n		}\r\n.logo{\r\n	cursor: pointer;\r\n}\r\n\r\n	/* main */\r\n\r\ntable{\r\n	max-width: 1200px;\r\n	width: 100%;\r\n	margin: 0 auto;\r\n	margin-top: 100px;\r\n	text-align: center;\r\n	position: relative;\r\n}\r\n.button{\r\n	display: block;\r\n	width: 100px;\r\n	height: 35px;\r\n	text-align: center;\r\n	line-height: 35px;\r\n	background: #000;\r\n	color: #fff;\r\n	margin: 0 auto;\r\n}\r\n\r\n	/* footer */\r\n\r\nfooter{\r\n	width: 100%;\r\n	height: 30px;\r\n	background: #000;\r\n	color: #fff;\r\n	text-align: center;\r\n	line-height: 30px;\r\n}\r\n\r\n	/* form */\r\n\r\n#form{\r\n	max-width: 600px;\r\n	width: 100%;\r\n	margin: 0 auto;\r\n	margin-top: 50px;\r\n}\r\n	#form > p{\r\n		font-size: 18px;\r\n		text-align: center;\r\n	}\r\n	\r\n#form > input{\r\n	width: 100%;\r\n	height: 40px;\r\n	margin: 10px 0;\r\n	padding: 0 10px;\r\n}\r\n	#form > input[type=submit]{\r\n		border: none;\r\n		background: #000;\r\n		color: #fff;\r\n		cursor: pointer;\r\n	}\r\ntextarea{\r\n	padding: 10px;\r\n	width: 100%;\r\n}', '', '2018-03-15 17:22:34', 0),
(6, 'asd', '김팬택', '영화', 'ㄴㅁㅇㄴ말ㅇㄹ날ㄴ멂닓재럼ㄴ asdf 너ㅑㅔㅐㅎ 갸헤 ㄷ거햐 ㅁ0ㄷ해ㅔ 먀ㅓㄷㄱㅎ ;ㅐㅔ9ㅑ거 ;\'ㅔㅐㄷㄱㅁㅎ ㅓㅐㅑ[\' ㄱ해\'[;ㅑ머 ㅓㄷ[\'; 햐ㅐㅁㄷ허ㅑ ㅐㄷ ㅎ[ㅑㅐ먿 ㅓ햐ㅐ\'', '', '2018-03-15 17:40:39', 0),
(7, 'ㅂ쟈ㅐㅎ', '김팬택', '영화', 'ㄹ 벧ㄱ o4t88 2ㄱ  wk ㅈㄹ 920 ㄹsdh rj2 0t38 tg ㅓㅈ댤 ㅣㄴㅁㄹ ㄹ5 ㅗㄱ gi r9w0 erkㄹ잗 러wep 2ㅑㄹ dsnf kwfql ㅗㄱ2ㅐㅑ 34t8 ㅓㄹㅈ다ㅣㄹ 2-f 23ㅑㄹ ㅓdjfkdnsqp;sap[ ps나ㅣㅗㅜ', '', '2018-03-15 17:40:39', 0),
(8, 'ㅁㄴㅇ', '김팬택', '스포츠', 'ㅁㄴㅇ', '', '2018-03-15 20:01:21', 0),
(9, 'ㅁㄴㅇ', '김팬택', '영화', 'ㅁㄴㅇㅁㄴㅇ', '', '2018-03-15 20:33:56', 0),
(10, '아니 씨발', '김팬택', '영화', 'ㅁㄴㅇㄹㄻㄴㄴㅇㄹ', '', '2018-03-15 20:49:52', 0),
(11, 'asd', '김팬택', 'IT', 'asd', '', '2018-03-15 20:54:25', 0),
(12, 'ㅁㄴㅇ', '김팬택', '영화', 'ㅁㄴㄻㄶㅁㄴㅀㅁㄴ', '', '2018-03-16 17:51:17', 0),
(13, 'ㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴ', '김팬택', '영화', 'ㄴㅇㄹㄴ롱ㄹ', '', '2018-03-16 17:51:41', 0),
(15, '글 을 수 정 합 니 다.', '김팬택', '게임', '글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글수정 테스트글트', '', '2018-03-16 18:06:55', 0),
(17, '글을 작성 해 봅시다', '김팬택', '스포츠', '호호ㅎㅁㄴㄹㅇ ㅏ ㄹㅇ ㅓㅏㄴㅇ ㄴㅇ  ds as as asa sas asda sdas dd rfoe pq f jzxcm  lgdpb 엥 핵 응 오ㅓㅇ 아', 'g1.png', '2018-03-17 15:39:41', 0),
(19, 'sdgsdgs', '엥', 'IT', 'ggsdgg', 'sam2.png', '2018-03-17 16:21:06', 0),
(20, '<script>alert(\'asd\');</script>', '엥', 'IT', '<script>alert(\'asd\');</script><script>alert(\'asd\');</script><script>alert(\'asd\');</script><script>alert(\'asd\');</script>', '', '2018-03-17 16:44:54', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `idx` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`idx`, `id`, `pw`, `name`) VALUES
(3, 'asd@asd.asd', 'f10e2821bbbea527ea02200352313bc059445190', '김팬택'),
(4, 'a@a.a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '엥');

-- --------------------------------------------------------

--
-- 테이블 구조 `reply`
--

CREATE TABLE `reply` (
  `idx` int(11) NOT NULL,
  `bidx` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `reply`
--

INSERT INTO `reply` (`idx`, `bidx`, `name`, `content`, `date`) VALUES
(1, 18, '김팬택', '우와', '2018-03-17 16:02:27'),
(2, 18, '김팬택', '신기', '2018-03-17 16:03:08'),
(3, 18, '김팬택', '신기', '2018-03-17 16:03:13'),
(7, 20, '엥', '으하하', '2018-03-17 16:52:29');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `reply`
--
ALTER TABLE `reply`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
