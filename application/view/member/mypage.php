<form action="" method="post" id="form">
	<p>마이페이지</p>
	<input type="text" name="id" id="id" readonly value="아이디(이메일) = <?php echo $_SESSION['member']['id']; ?>">
	<input type="text" name="name" id="name" readonly value="이름 = <?php echo $_SESSION['member']['name']; ?>">
</form>