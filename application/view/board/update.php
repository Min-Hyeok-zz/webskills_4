<form action="" method="post" id="form" enctype="multipart/form-data" style="margin-top: -0px;">
	<input type="hidden" name="action" value="update">
	<p>제목</p><input type="text" name="subject" id="subject" value="<?php echo $this->view->subject; ?>">
	<p>작성자</p><input type="text" name="name" id="name" readonly required value="<?php echo $this->view->name; ?>">
	<p>내용</p><textarea name="content" id="content" cols="30" rows="10"><?php echo $this->view->content; ?></textarea>
	<?php if ($this->view->img != ""): ?>
	<p>이미지</p><img src="<?php echo _UPLOAD.$this->view->img; ?>" alt="img" class="img">
	<p>이미지 변경</p><input type="file" name="img" accept="image/*">
	<?php else: ?>
	<p>이미지 업로드</p><input type="file" name="img" id="img">
	<?php endif ?>
	<input type="submit" value="글수정">
</form>