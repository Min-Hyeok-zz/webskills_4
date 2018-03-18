<?php
	Class boardController extends Controller{

		function view(){
			$this->db->boardAction();
			$this->view = $this->db->view();
			$this->prev = $this->db->prev();
			$this->next = $this->db->next();
			$this->reply = $this->db->reply();
		}

		function write(){
			$this->db->boardAction();
		}

		function update(){
			$this->view();
			$this->db->boardAction();
		}

		function delete(){
			$this->db->boardAction();
		}

	}