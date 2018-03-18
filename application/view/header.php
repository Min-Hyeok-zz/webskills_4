<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="<?php echo _CSS ?>common.css">
<style>
	.page_num > a:nth-child(<?php echo $this->param->page_num; ?>){
		background: #fff;
		color: #000;
	}
</style>
</head>
<body>
<div class="bg"></div>
<header>
	<nav>
		<div class="logo">
			<a href="/"><img src="<?php echo _IMG ?>logo.png" alt="logo" title="logo"></a>
		</div>
		<ul>
			<?php if (isset($_SESSION['member'])): ?>
			<li><a href="#!"><?php echo $_SESSION['member']['name']; ?>님</a></li>
			<li><a href="/member/logout">로그아웃</a></li>
			<li><a href="/member/mypage">마이페이지</a></li>
			<?php else: ?>
			<li><a href="/member/login">로그인</a></li>
			<li><a href="/member/join">회원가입</a></li>
			<?php endif ?>
		</ul>
	</nav>
</header>