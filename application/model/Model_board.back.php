<?php
	Class Model_board extends Model{

		function view(){
			$view = $this->fetch("select * from board where idx='{$this->param->idx}'");
			access($view == "","잘못된 접근입니다.");
			return $view;
		}

		function reply(){
			return $this->fetchAll("select * from reply where bidx='{$this->param->idx}' order by date desc");
		}

		function prev(){
			$prev = (array)$this->fetch("select max(idx) from board where idx < '{$this->param->idx}'");
			return $prev['max(idx)'];
		}

		function next(){
			$next = (array)$this->fetch("select min(idx) from board where idx > '{$this->param->idx}'");
			return $next['min(idx)'];
		}

		function boardAction(){
			if (isset($_POST['action'])) {
				loginChk();
				$_POST = array_map("htmlspecialchars", $_POST);
				extract($_POST);
				$msg = "완료되었습니다.";
				$url = "/";
				switch ($_POST['action']) {
					case 'insert':
						access(trim($name) == "" || trim($subject) == "" || trim($category) == "" || trim($content) == "","빈 값이 있습니다.");
						access($name != $_SESSION['member']['name'],"작성자를 변경하지 마세요.");
						$cat = ['영화','스포츠','게임','IT'];
						access(!in_array($category, $cat),"카테고리를 변경하지 마세요");
						$sql = "insert into board set ";
						// $sql .= "name='{$name}'";
						// $sql .= ",subject='{$subject}'";
						// $sql .= ",category='{$category}'";
						// $sql .= ",content='{$content}'";
						$sql .= "name=?";
						$sql .= ",subject=?";
						$sql .= ",category=?";
						$sql .= ",content=?";
						if($_FILES['img']['type'] != ""){
							$type = $_FILES['img']['type'];
							$arr = ['image/jpg','image/jpeg','image/png','image/gif'];
							access(!in_array($type, $arr),"이미지만 업로드 할 수 있습니다.");
							$upload = _PUBLIC."upload/";
							$imgName = $_FILES['img']['name'];
							$target = $upload.$imgName;
							if(move_uploaded_file($_FILES['img']['tmp_name'], $target) ) {
								$sql .= ",img='{$imgName}'";
							}
						}
						$sql .= ",date=now();";
						//$res = $this->db->prepare($sql)->execute([$name,$subject,$category,$content]);
						//access($res,$msg,$url);
						access($this->query($sql),$msg,$url);
					break;
					case 'update':
						access(trim($subject) == "" || trim($content == ""),"빈 값이 있습니다.");
						$sql = "update board set ";
						$sql .= "subject='{$subject}'";
						$sql .= ",content='{$content}'";
						if($_FILES['img']['type'] != ""){
							$type = $_FILES['img']['type'];
							$arr = ['image/jpg','image/jpeg','image/png','image/gif'];
							access(!in_array($type, $arr),"이미지만 업로드 할 수 있습니다.");
							$upload = _PUBLIC."upload/";
							$imgName = $_FILES['img']['name'];
							$target = $upload.$imgName;
							if(move_uploaded_file($_FILES['img']['tmp_name'], $target) ) {
								$sql .= ",img='{$imgName}'";
							}
						}
						$sql .= " where idx='{$this->param->idx}'";
						access($this->query($sql),$msg,$url);
					break;
					case 'delete':
						access($this->query("delete from board where idx='{$this->param->idx}'"),$msg,$url);
					break;
					case 'reply_insert':
						access($_SESSION['member']['name'] != $name,"작성자를 임의로 변경하지 마세요.");
						$sql = "insert into reply set ";
						$sql .= "bidx='{$this->param->idx}'";
						$sql .= ",name='{$name}'";
						$sql .= ",content='{$content}'";
						$sql .= ",date=now();";
						access($this->query($sql),$msg,$url);
					break;
					case 'reply_delete':
						access($this->query("delete from reply where idx='{$idx}'"),$msg,$url);
					break;
				}
			}
		}

	}