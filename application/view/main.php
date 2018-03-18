<p style="text-align: center;">총 게시물 갯수 = <?php echo $this->total; ?></p>
<form action="/1/" method="get" id="form" style="margin-top: 10px;">
	<input type="text" name="s" id="s" placeholder="검색" required autofocus value="<?php echo $this->search ?>">
	<input type="submit" value="검색">
</form>
<a href="/board/write" class="button" style="margin-top: 10px;">글작성</a>
<table>
	<colgroup>
		<col width="10%">
		<col width="20%">
		<col width="40%">
		<col width="10%">
		<col width="10%">
		<col width="10%">
	</colgroup>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>글내용</th>
			<th>작성자</th>
			<th>카테고리</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<?php if ($this->list == NULL): ?>
			<tr>
				<td></td>
				<td></td>
				<td>검색 결과가 없습니다.</td>
			</tr>
		<?php else: ?>
			<?php foreach ($this->list as $data): ?>
				<tr>
					<td><?php echo htmlspecialchars($data->idx); ?></td>
					<td style="text-align: left;">
						<a href="/board/view/<?php echo htmlspecialchars($data->idx); ?>"><?php echo mb_substr(htmlspecialchars($data->subject), 0,10); ?></a>
					</td>
					<td style="padding: 10px 0;">
						<a href="/board/view/<?php echo htmlspecialchars($data->idx); ?>"><?php echo mb_substr(htmlspecialchars($data->content), 0,100); ?></a>
					</td>
					<td><?php echo htmlspecialchars($data->name); ?></td>
					<td><?php echo htmlspecialchars($data->category); ?></td>
					<td><?php echo htmlspecialchars($data->date); ?></td>
				</tr>
			<?php endforeach ?>
		<?php endif ?>
	</tbody>
</table>

<div class="pageing">
	<a href="/<?php echo $this->param->page_num - 1; ?>/?s=<?php echo $this->search; ?>" class="button">이전</a>
	<div style="display: flex;" class="page_num">
		<?php
			for ($i=1; $i <= $this->cnt; $i++) { 
				echo "<a href='/{$i}/?s={$this->search}' class='pn'>{$i}</a>";
			}
		?>
	</div>
	<a href="/<?php echo $this->param->page_num + 1; ?>/?s=<?php echo $this->search; ?>" class="button">다음</a>
</div>
