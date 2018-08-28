<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Comments extends CI_Controller
{
	
	// public function create($post_id)
	// {
	// 	$slug = $this->input->post('slug');
	// 	$data['post'] = $this->post_model->get_posts($slug);

	// 	if(empty($data['post']))
	// 	{
	// 		show_404();
	// 	}
	// 	$data['title'] = $data['post']['title'];


	// 	$this->form_validation->set_rules('name','Name','required');
	// 	$this->form_validation->set_rules('email','Email','required');
	// 	$this->form_validation->set_rules('email','Email','valid_email');
	// 	$this->form_validation->set_rules('body','Body','required');

	// 	if($this->form_validation->run() === FALSE)
	// 	{
	// 		//echo $data;
	// 		$this->load->view('templates/header');
	// 		$this->load->view('pages/posts/view',$data);
	// 		$this->load->view('templates/footer');
	// 		// print_r ($data['title']);

	// 	} else
	// 	{
	// 		//echo $data;
	// 		$this->comment_model->create_comment($post_id);
	// 		redirect('posts/'.$slug);
	// 	}
	// }

	public function create()
	{
		
		if($this->session->userdata('logged_in'))
		{
			// echo $id;
			$slug = $this->input->post('slug');
			$id = $this->input->post('id');
			$data['post'] = $this->post_model->get_posts($slug);
			$user_id = $this->session->userdata('user_id');
			
			// $this->form_validation->set_rules('body','Body','required');

			// if($this->form_validation->run() === FALSE)
			// {
			// 	$this->load->view('templates/header');
			// 	$this->load->view('pages/posts/view',$data);
			// 	$this->load->view('templates/footer');
			// 	// print_r ($data['title']);

			// } else
			// {
				// echo $data;
				$data = array(
					'post_id' => $id,
					'user_id' => $user_id,
					'body' => $this->input->post('comment')
				);
				$this->comment_model->create_comment($data);
				// redirect('posts/'.$slug);
			echo 'true';
			// }
		}
		else
		{
			echo 'false';
		}
	}
}