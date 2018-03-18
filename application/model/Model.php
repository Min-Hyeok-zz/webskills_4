<?php
	Class Model{

		var $sql;

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
		function query($sql = false){
			if($sql) $this->sql = $sql;
			$res = $this->db->query($this->sql);
			if(!$res){
				echo "<pre>";
				echo $this->sql;
				print_r($this->db->errorInfo());
				echo "</pre>";
				exit;
			}
			return $res;
		}

		function fetch($sql = false){
			if($sql) $this->sql = $sql;
			return $this->query()->fetch();
		}

		function fetchAll($sql = false){
			if($sql) $this->sql = $sql;
			return $this->query()->fetchAll();
		}

		function cnt($sql = false){
			return $this->query()->rowCount();
		}

		function getColumn($arr, $cancel){
			$column = '';
			$cancel = explode("/",$cancel);
			foreach($arr as $key=>$val){
				if(in_array($key,$cancel)) continue;
				$column .= ", {$key}='{$val}'";
			}
			return substr($column,2);
		}

		function setQuery($table, $action, $column){
			switch($action){
				case 'insert' :
					$sql = "INSERT INTO {$table} SET ";
				break;
				case 'update' :
					$sql = "UPDATE {$table} SET ";
				break;
				case 'delete' :
					$sql = "DELETE FROM {$table} ";
				break;
			}
			$sql .= $column;
			$this->sql = $sql;
			return $this->query();
		}

	}