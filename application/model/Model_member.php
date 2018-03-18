<?php
	Class Model_member extends Model{

		function mypage(){
			return $this->db->fetchAll("select * from board where name='{$_SESSION['member']['name']}'");
		}

		function memberAction(){
			if (isset($_POST['action'])) {
				$_POST = array_map("htmlspecialchars", $_POST);
				extract($_POST);
				switch ($_POST['action']) {
					case 'join':
						access(trim($id) == "" || trim($pw) == "" || trim($name) == "","빈 값이 있습니다.");
						access($this->cnt("select * from member where id='{$id}'") != 0,"중복된 아이디입니다.");
						access($pw != $pw_re,"비밀번호와 비밀번호 확인이 일치하지 않습니다.");
						$sql = "insert into member set id='{$id}', pw=sha1('{$pw}'),name='{$name}'";
						access($this->query($sql),"회원가입이 완료되었습니다.","/");
					break;
					case 'login':
						$sql = "select * from member where id='{$id}' and pw=sha1('{$pw}')";
						access($this->cnt($sql) != 1,"아이디 또는 비밀번호가 일치하지 않습니다.");
						$rs = $this->fetch($sql);
						$_SESSION['member']['id'] = $rs->id;
						$_SESSION['member']['name'] = $rs->name;
						alert("로그인 되었습니다.");
						move('/');
					break;
				}
			}
		}

	}