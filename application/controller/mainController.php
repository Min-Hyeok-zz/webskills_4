<?php
	Class mainController extends Controller{

		function basic(){
			$this->search = Application::getUri();
			if ($this->search != "") {
				$sql = "select * from board where subject like '%{$this->search}%' or content like '%{$this->search}%'";
			} else{
				$sql = "select * from board";
			}
			$this->total = count($this->db->fetchAll($sql));
			$this->cnt = ceil($this->total / 5);
			if ($this->cnt <= 0) $this->cnt == 1;
			access($this->cnt < 0,"잘못된 접근입니다.");
			access($this->cnt == 0 && $this->param->page_num > 1 || $this->cnt != 0 && $this->param->page_num > $this->cnt,"잘못된 접근입니다.");
			$this->list = $this->db->getList();
		}

	}