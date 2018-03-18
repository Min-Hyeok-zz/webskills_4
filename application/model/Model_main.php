<?php
	Class Model_main extends Model{
		
		function getList(){
			$start = ($this->param->page_num - 1) * 5;
			$line = 5;
			access($start < 0,"잘못된 접근입니다.");
			$s = Application::getUri();
			if ($s != "") {
				$sql = "select * from board where subject like '%{$s}%' or content like '%{$s}%' order by date desc limit {$start},{$line}";
			} else{
				$sql = "select * from board order by date desc limit {$start},{$line}";
			}
			return $this->fetchAll($sql);
		}

	}