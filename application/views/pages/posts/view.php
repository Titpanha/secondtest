<div class="container">
	<h2 class="text-center"><?=$title ?></h2>
	<small class="post-date">Posted on: <?php echo $post['created_at'];?></small><br>
	<div align="center">
		<img  src="<?php echo site_url();?>assets/images/posts/<?php echo $post['post_image'];?>">
	</div>
</div>
<div class="container">
	<div class="post-body">
		<?php echo $post['body']; ?>
	</div> 
	
<!-- <?php //if($this->session->userdata('user_id')== $post['user_id']): ?>
	<hr>
	<a href="<?php //echo base_url();?>posts/edit/<?php// echo $post['slug'];?>" class="btn btn-info pull-left" >Edit</a>
	<?php //echo form_open('/posts/delete/'.$post['id']);?>
		<input type="submit" value="Delete" class="btn btn-danger">
	<?php //echo form_close();?>
	<br>
<?php //endif;?> -->


	<hr>
	<h3>Comments</h3>
		<?php if($comments) : ?>
			<?php foreach ($comments as $cmts) :?>
				<div class="well">
					<!-- <strong> <?php echo $cmts['name'];?></strong> -->
					<p><?php echo $cmts['created_at'];?></p>
					<h5><?php echo $cmts['body']; ?> [By <strong> <?php echo $cmts['name'];?></strong>]</h5>
				</div>
			<?php endforeach; ?>
		<?php else : ?>
			<p>No comment to display.</p>
		<?php endif;?>



	<h3>Add Comment</h3>
	<!-- <?php echo validation_errors(); ?> -->
	<form class="comment_form" action="">
		
		<div class="form-group">
			<label>Comment</label>
			<textarea type="text" name="comment" class=" comment form-control"></textarea>
		</div>
		<input type="hidden" name="slug" value="<?php echo $post['slug'];?>">
		<button class="btn btn-primary" type="button">post comment</button>
	<?php echo form_close();?>
	<hr>

</div>
<script>
	var $form_modal = $('.cd-user-modal'),
		$form_login = $form_modal.find('#cd-login'),
		$form_signup = $form_modal.find('#cd-signup'),
		$form_forgot_password = $form_modal.find('#cd-reset-password'),
		$form_modal_tab = $('.cd-switcher'),
		$tab_login = $form_modal_tab.children('li').eq(0).children('a'),
		$tab_signup = $form_modal_tab.children('li').eq(1).children('a'),
		$forgot_password_link = $form_login.find('.cd-form-bottom-message a'),
		$back_to_login_link = $form_forgot_password.find('.cd-form-bottom-message a'),
		$main_nav = $('.main-nav li a.cd-signin');
	$(document).ready(function(){
		$('.btn').on('click', function(){
			var url = "<?php echo base_url('comments/create/') ?>";
			var comment = $('.comment').val();
			var id = <?php echo $post['id']?>;
			$.ajax({
				type:'POST',
				url: url,
				data:{
					comment:comment,
					id: id
				},
				success:function(cmt)
				{
					//console.log(cmt);
					if (cmt == "false") 
					{
						// $('.');
						console.log(cmt);
						$('.main-nav li a.cd-signin').children('ul').removeClass('is-visible');
						$('.cd-user-modal').addClass('is-visible');
						( $(event.target).is('.cd-signup') ) ? signup_selected() : login_selected();
					}
					else if(cmt == "true")
					{	
						document.location.reload();
					}
				}
			});
		});
	});
	function login_selected(){
		$form_login.addClass('is-selected');
		$form_signup.removeClass('is-selected');
		$form_forgot_password.removeClass('is-selected');
		$tab_login.addClass('selected');
		$tab_signup.removeClass('selected');
	}

	function signup_selected(){
		$form_login.removeClass('is-selected');
		$form_signup.addClass('is-selected');
		$form_forgot_password.removeClass('is-selected');
		$tab_login.removeClass('selected');
		$tab_signup.addClass('selected');
	}
</script>