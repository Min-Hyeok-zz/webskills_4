<div style="display: flex;">
	<form action="" id="form">
		<h5>조회수 = <?php echo $this->view->hit; ?></h5>
		<p>제목</p><input type="text" name="subject" id="subject" readonly value="<?php echo $this->view->subject; ?>">
		<p>카테고리</p><input type="text" name="category" readonly value="<?php echo $this->view->category; ?>">
		<p>작성자</p><input type="text" name="name" id="name" readonly value="<?php echo $this->view->name; ?>">
		<p>내용</p><textarea name="content" id="content" cols="30" rows="10" readonly><?php echo $this->view->content ?></textarea>
		<?php if ($this->view->img != ""): ?>
		<p>이미지</p><img src="<?php echo _UPLOAD.$this->view->img ?>" alt="img" title="img" class="img">
		<?php endif ?>
		<p>작성일</p><input type="text" name="date" id="date" readonly value="<?php echo $this->view->date; ?>">
		<div style="display: flex;justify-content: space-between;">
			<div style="display: flex;">
				<a href="<?php echo $this->prev; ?>" style="padding: 0 10px;">이전글</a>
				<a href="<?php echo $this->next; ?>" style="padding: 0 10px;">다음글</a>
			</div>
			<div>
				<a href="/board/update/<?php echo $this->view->idx; ?>">글수정</a>
			</div>
		</div>
	</form>
	<?php if (isset($_SESSION['member']) && $this->view->name == $_SESSION['member']['name']):?>
		<form action="" method="post">
			<input type="hidden" name="action" value="delete">
			<input type="submit" value="삭제" onclick="if (confirm('삭제?') == true) $(this).submit();">
		</form>
	<?php endif ?>
	<div style="position: relative;left: -15%;">
		<?php if (isset($_SESSION['member'])): ?>
			<form action="" method="post" id="form">
				<input type="hidden" name="action" value="reply_insert">
				<p>작성자</p><input type="text" name="name" required readonly value="<?php echo $_SESSION['member']['name']; ?>">
				<p>댓글 내용</p><input type="text" name="content" required autofocus>
				<input type="submit" value="댓글달기">
			</form>
		<h4>댓글</h4>
		<?php endif ?>
		<div>
			<div>
				<?php if ($this->reply != NULL): ?>
					<?php foreach ($this->reply as $data): ?>
						<form action="" method="post" id="reply_delete">
							<input type="hidden" name="action" value="reply_delete">
							<p><?php echo $data->name; ?> : <?php echo $data->content; ?></p>
							<input type="text" name="idx" readonly value="<?php echo $data->idx; ?>" style='display: none;'>
							<button type="submit" style="cursor: wait;">삭제</button>
						</form>
					<?php endforeach ?>
				<?php endif ?>
			</div>
		</div>
	</div>
</div>