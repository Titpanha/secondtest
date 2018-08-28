<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>Day - HTML Bootstrap Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/bootstrap.min.css'?>">
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/font-awesome.min.css'?>">
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/animate.css'?>">
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/animate.min.css'?>">
    <!-- end bootstrap -->
    <!-- custom style -->
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/pageStyle.css'?>">
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/post.css'?>">
    <!-- end custom style -->
    <!-- modal popup login and register -->
    <link rel="stylesheet" href="<?=base_url().'assets/pages/css/modalform.css'?>"> 
    <!-- end modal -->
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
    <!-- jquery -->
    <script src="<?=base_url().'assets/pages/js/jquery.js'?>"></script>
    <script src="<?=base_url().'assets/pages/js/modalform.js'?>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="<?=base_url().'assets/pages/js/form.js'?>"></script>

  </head>
  <body>	
	<header id="header">
        <nav class="navbar navbar-default " role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <div class="navbar-brand">
						<a href="<?php echo site_url('/')?>"><h1>learnCodeIgniter</h1></a>
					</div>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu">
						<ul class="nav nav-tabs main-nav" role="tablist">
							 <!-- <li role="presentation"><a href="<?php echo site_url('pages/view')?>">Home</a></li> -->
							<li role="presentation"><a href="<?php echo site_url('pages/aboutus')?>">About Us</a></li>
							<li role="presentation"><a href="<?php echo site_url('pages/services')?>">Services</a></li>
							<li role="presentation"><a href="<?php echo site_url('pages/gallery')?>">Gallery</a></li>
							<li role="presentation"><a href="<?php echo site_url('pages/contact')?>">Contact</a></li>
                            <li role="presentation"><a href="<?php echo base_url(); ?>posts">blog</a></li>
                            <!-- <li role="presentation"><a href="<?php echo base_url(); ?>categories">Categories</a></li>             -->
							<?php if(!$this->session->userdata('logged_in')) : ?>
							     <li role="presentation"><a class="cd-signin" href="#">Sign In</a></li>
                        	<?php endif;?>
                        	<?php if($this->session->userdata('logged_in')) : ?>	
                               <!--  <li role="presentation"><a href="<?php echo base_url(); ?>categories/create">Create Category</a></li>  -->
                                <!-- <li role="presentation"><a class="cd-signup" href="#0">Sign up</a></li> -->	
                                <li role="presentation"><a href="<?php echo site_url('posts/create')?>">Dashboard</a></li>
                                <li role="presentation"><a href="<?php echo site_url('users/logout')?>">logout</a></li>
                            <?php endif;?>				
						</ul>
					</div>
				</div>		
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->


    <div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
        <div class="cd-user-modal-container"> <!-- this is the container wrapper -->
            <ul class="cd-switcher">
                <li><a href="#">Sign in</a></li>
                <li><a href="#s">New account</a></li>
            </ul>

            <div id="cd-login"> <!-- log in form -->

                 <form class="cd-form logForm" data-toggle="validator" action="" method="POST" >
                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signin-username">Username</label>
                        <input class="full-width has-padding has-border" id="signin-username" name="username" type="text" placeholder="Username" required autofocus>
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signin-password">Password</label>
                        <input class="full-width has-padding has-border" id="signin-password" name="password" type="password"  placeholder="Password" required autofocus>
                        <a href="#0" class="hide-password">Hide</a>
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <!-- <p class="fieldset">
                        <input type="checkbox" id="remember-me" checked>
                        <label for="remember-me">Remember me</label>
                    </p> -->

                    <p class="fieldset">
                        <input class="full-width login" type="submit"  value="Login">
                    </p>
                <?php echo form_close(); ?>
                
                <!-- <p class="cd-form-bottom-message"><a href="#">Forgot your password?</a></p> -->
                <!-- <a href="#0" class="cd-close-form">Close</a> -->
            </div> <!-- cd-login -->

            <div id="cd-signup"> <!-- sign up form -->
                
                 <form class="cd-form signup" action="" data-toggle="validator" method="POST">
                     <p class="fieldset">
                        <label class="image-replace cd-username" for="signup-name">Name</label>
                        <input class="full-width has-padding has-border s-name" id="signup-name" name="name" type="text" placeholder="Name" required autofocus>
                        
                    </p>
                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-zipcode">Zipcode</label>
                        <input class="full-width has-padding has-border s-zipcode" id="signup-zipcode" name="zipcode" type="number" placeholder="Zipcode" required autofocus>
                        
                    </p>
                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signup-username">Username</label>
                        <input class="full-width has-padding has-border s-username" id="signup-username" name="username" type="text" placeholder="Username" required autofocus>
                        <p class="uname"></p>
                        
                    </p>

                    <p class="fieldset">
                        <!-- <span class="message"></span> -->
                        <label class="image-replace cd-email" for="signup-email">E-mail</label>
                        <input class="full-width has-padding has-border s-email" id="signup-email" name="email" type="email" placeholder="E-mail" required autofocus>
                        <p class="email"></p>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password">Password</label>
                        <input class="full-width has-padding has-border s-pwd" id="signup-pwd" name="password" type="password"  placeholder="Password" required autofocus>
                        <a href="#0" class="hide-password">Hide</a>
                        <p class="span"></p>                        
                    </p>
                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-confirm">Password</label>
                        <input class="full-width has-padding has-border s-confirmpwd" id="signup-confirmpwd" name="password2" type="password"  placeholder="Confirm Password" required autofocus>
                        <a href="#0" class="hide-password">Hide</a>
                        <p id="pwd"></p>
                        
                    </p>

                    <!-- <p class="fieldset">
                        <input type="checkbox" id="accept-terms">
                        <label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
                    </p>
 -->
                    <p class="fieldset">
                        <input class="full-width has-padding signup" type="submit" value="Create account">
                    </p>
                </form>

                <!-- <a href="#0" class="cd-close-form">Close</a> -->
            </div> 



           <!--  <div id="cd-reset-password"> 
                <p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

                <form class="cd-form">
                    <p class="fieldset">
                        <label class="image-replace cd-email" for="reset-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding reset" type="submit" value="Reset password">
                    </p>
                </form> -->






                <p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
            </div> <!-- cd-reset-password -->
            
            <a href="#0" class="cd-close-form">Close</a>
        </div> <!-- cd-user-modal-container -->
    </div> <!-- cd-user-modal -->
	
	<div class="container">
       
        <!-- message user registered success -->
        <?php if($this->session->flashdata('user_registered')): ?>
            <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('user_registered').'</h3>';?>
        <?php endif;?> 

        <!-- message post created success -->
        <?php if($this->session->flashdata('post_created')): ?>
            <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('post_created').'</h3>';?>
        <?php endif;?> 

        <!-- post updated -->
        <?php if($this->session->flashdata('post_updated')): ?>
            <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('post_updated').'</h3>';?>
        <?php endif;?> 

         <!-- category created success -->
         <?php if($this->session->flashdata('category_created')): ?>
            <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('category_created').'</h3>';?>
        <?php endif;?>
         <?php if($this->session->flashdata('category_deleted')):?>
            <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('category_deleted').'</h3>';?>
        <?php endif;?>
        <!-- login success -->
        <?php echo validation_errors(); ?>
        
            <?php if($this->session->flashdata('user_loggedin')): ?>
                <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</h3>'; ?>
            <?php endif; ?>
        
        <!-- login fail -->
        
            <?php if($this->session->flashdata('login_failed')): ?>
                <?php echo '<h3 class="alert alert-success">'.$this->session->flashdata('login_failed').'</h3>'; ?>
            <?php endif; ?>
   
    </div>
   
    <script>
        $(function(){
            var s_name = false;
            var s_zipcode = false;
            var s_username = false;
            var s_email = false;
            var s_password = false;
            var s_confirm_password = false;


            $('#signup-email').on('keyup keydown change',function(){
                check_email();
            });
            $('#signup-name').on('keyup keydown change',function(){
                check_name();
            });
            $('#signup-zipcode').on('keyup keydown change',function(){
                check_zipcode();
            });
            $('#signup-username').on('keyup keydown change',function(){
                check_username();
            });
            $('#signup-pwd').on('keyup keydown change',function(){
                check_password();
            });
            $('#signup-confirmpwd').on('keyup keydown change',function(){
                check_confirm_password();
            });

            function check_email(){
                var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                var email = $('.s-email').val();
                if (pattern.test(email) && email !='') 
                {
                    $.ajax({
                        data:{email:email},
                        type:'POST',
                        url:'<?php echo base_url('users/check_email_avalibility'); ?>',
                        success:function(eml)
                        {
                            $('.email').html(eml);
                        }
                    });
                }
                else
                {
                    s_email = true;
                }
            }
        });

    </script>
    
      