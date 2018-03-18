<form action="" method="post" id="form" enctype="multipart/form-data">
	<p>글작성</p>
	<input type="hidden" name="action" value="insert">
	<input type="text" name="name" id="name" required readonly value="<?php echo $_SESSION['member']['name']; ?>">
	<input type="text" name="subject" id="subject" placeholder="글제목" required autofocus>
	<select name="category" required>
		<option value="">선택 해 주세요</option>
		<option value="IT">IT</option>
		<option value="영화">영화</option>
		<option value="스포츠">스포츠</option>
		<option value="게임">게임</option>
	</select>
	<textarea name="content" id="content" cols="30" rows="10" placeholder="글내용"></textarea>
	<input type="file" name="img" id="img" accept="image/*">
	<input type="submit" value="글작성">
</form>