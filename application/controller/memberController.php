<?php
	Class memberController extends Controller{

		function join(){
			$this->db->memberAction();
		}

		function login(){
			$this->db->memberAction();
		}

		function logout(){
			loginChk();
			access(session_destroy(),"로그아웃 되었습니다.","/");
		}

	}