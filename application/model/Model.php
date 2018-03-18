<?php
	Class Model{

		function __construct($param){
			$this->param = $param;
			try {
				$this->db = new PDO("mysql:host=localhost;dbname=0309;charset=utf8;","root","");
				$this->db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
			} catch (Exception $e) {
				echo "404 Error";
				exit;
			}
		}

		//쿼리문 함수 설정
		function query($sql){
			return $this->db->query($sql);
		}

		function fetch($sql){
			return $this->db->query($sql)->fetch();
		}

		function fetchAll($sql){
			return $this->db->query($sql)->fetchAll();
		}

		function cnt($sql){
			return $this->db->query($sql)->rowCount();
		}

	}