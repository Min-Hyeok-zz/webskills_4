<form action="" method="post" id="form">
	<p>회원가입</p>
	<input type="hidden" name="action" value="join">
	<input type="text" name="id" id="id" placeholder="이메일 예시) asd@asd.com" required autofocus pattern="^([a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+)$">
	<input type="password" name="pw" id="pw" placeholder="비밀번호" required>
	<input type="password" name="pw_re" id="pw_re" placeholder="비밀번호 획인" required>
	<input type="text" name="name" id="name" placeholder="이름" required>
	<input type="submit" value="회원가입">
</form>