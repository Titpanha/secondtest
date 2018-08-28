<?php 
/**
 * 
 */
class Comment_model extends CI_Model
{
	
	public function __construct()
	{
		$this->load->database();
	}

	public function create_comment($data)
	{
		
		return $this->db->insert('comments',$data);
	}

	//get comments
	public function get_comments($post_id)
	{
		$this->db->where('post_id',$post_id);
		$this->db->join('users','comments.user_id = users.id');
		$query = $this->db->get_where('comments');
		return $query->result_array();
	}
}