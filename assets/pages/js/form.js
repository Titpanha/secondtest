

$(document).ready(function(){
     $('.login').on('click', function(){
        var username = $('#signin-username').val();
        var password = $('#signin-password').val();
        
       $.ajax({
        url:'http://localhost/codeIgnitor/addTemplate/users/login',
        type:'POST',
        data:{username:username, password:password},
        dataType:'text',
        success: function(data){
            // console.log(data);
            if(data == 0) {
                alert('login fail');
                return false;
            }
            else if(data == 1)
            {
                return true;
                location.reload();
            }
        }
       });
    });

    $('.s-email').on('keydown keyup change',function() {
        var email = $('.s-email').val();
        if (email != '') 
        {
            $.ajax({  
                url:'http://localhost/codeIgnitor/addTemplate/users/check_email_avalibility',  
                type:'POST',  
                data:{email:email},  
                success:function(eml){  
                    $('.email').html(eml); 
                    
                }  
            });  
        }
    });
            
        // validation username_is_exist or not
        $('.s-username').on('keydown keyup change',function(){
            var username = $('.s-username').val();
            if (username!= '') 
            {
                $.ajax({
                    url:'http://localhost/codeIgnitor/addTemplate/users/username_is_exist',
                    type:'POST',
                    data:{username:username},
                    success:function(un){
                        $('.uname').html(un);
                    }
                });
            }
        });
   

        $(".s-pwd").on("keydown keyup change", function(){
            var minLength = 6;
            var maxLength = 20;
            var value = $(this).val();

            if (value.length < minLength)
                $('.span').text("Password at least 6").css('color','#DAA520');
            else if (value.length > maxLength)
                $('.span').text("Password max length is 20").css('color','red');
            else
                $('.span').text("Password is valid").css('color','green');
        });

        //compare password must be match each others
        $('.s-pwd,.s-confirmpwd').on('keydown keyup change', function()
        {
            if ($('.s-pwd').val() == $('#signup-confirmpwd').val()) 
            {
             $('#pwd').html('Matching').css('color', 'green');
            } 
            else 
            {
                $('#pwd').html('Not Matching').css('color', 'red');
            }
        });

        
    });



