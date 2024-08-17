<?php

include 'config.php';

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));
   $user_type = $_POST['user_type'];

   $select_users = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email' AND password = '$pass'") or die('query failed');

   if(mysqli_num_rows($select_users) > 0)
   {
      $message[] = 'user already exist!';
   }
   else
   {
        mysqli_query($conn, "INSERT INTO `users`(name, email, password, user_type) VALUES('$name', '$email', '$cpass', '$user_type')") or die('query failed');
        $message[] = 'registered successfully!';
        header('location:login.php');
      
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Register</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>



<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>
   
<div class="form-container">

   <form action="" method="post">
      <h3>register now</h3>

      <input type="text" name="name" id="name" placeholder="Enter your name" autocomplete="off" class="box">
      <p align="left" class="name-error" class="p-marg p1-vis"> Invalid name </p>

      <input type="email" name="email" id="email" placeholder="Enter your email" class="box">
      <p align="left" class="email-error" class="p-marg p1-vis"> Invalid email </p>

      <input type="password" name="password" id="password" placeholder="Enter strong password" class="box">
      <p align="left" class="password-error" class="p-marg p1-vis"> Invalid name </p>

      <input type="password" name="cpassword" id="confirmpass" placeholder="Confirm your password" class="box">
      <p align="left" class="confirm-error" class="p-marg p1-vis"> Invalid name </p>

      <div class="checkbox">
         <input type="checkbox" value="show-password" name="checkbox_id" onclick="showpassword()" id="checkbox_id"> <label for="checkbox_id" id="checkboxlabel">Show password</label>
      </div>

      <select name="user_type" class="box">
         <option value="user">User</option>
      </select>

      <input type="button" name="submit" id="button"  value="register now" onclick="check()" class="btn">
      <p class="temp">Already have an account? <a href="login.php">login now</a></p>

   </form>

</div>

</body>

   <script>
      
      function showpassword()
      {
         let checkbox = document.getElementById("checkbox_id");
         let temp = checkbox.checked;
         var a = document.querySelector("#password");
         var b = document.querySelector("#confirmpass");



         if(temp==true)
         {
            a.setAttribute("type","text");
            b.setAttribute("type","text");
         }
         else
         {
            a.setAttribute("type","password");
            b.setAttribute("type","password");
         }
      }

var a=b=c=d=0;


    function check()
    {
        let user       = document.getElementById('name').value;
        let email      = document.getElementById('email').value;
        let password   = document.getElementById('password').value;
        let confirm    = document.getElementById('confirmpass').value;
        var validemail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        
        if(user.length<1)
        {
            document.querySelector('.name-error').classList.add('active');
            document.querySelector('.name-error').innerHTML="Please fill out this field";
        }
        else
        {
            if(user.match(/[0-9]/)  || user.match(/[!\@\#\$\%\^\&\*\(\)\-\_\+\=\|\[\]\{\}\'\"\:\;\/\?\>\.\<\,]/))
            {
                document.querySelector('.name-error').classList.add('active');
                document.querySelector('.name-error').innerHTML="Invalid name";
                a--;
            }
            else
            {
                document.querySelector('.name-error').classList.remove('active');
                a++;
            }
        }

        if(email.length<1)
        {
            document.querySelector('.email-error').classList.add('active');
            document.querySelector('.email-error').innerHTML="Please fill out this field";
        }
        else
        {
            if(email.match(validemail))
            {
                document.querySelector('.email-error').classList.remove('active');
                b++;
            }
            else
            {
                document.querySelector('.email-error').classList.add('active');
                document.querySelector('.email-error').innerHTML="Invalid email";
                b--;
            }
        }


        if(password.length<1)
        {
            document.querySelector('.password-error').classList.add('active');
            document.querySelector('.password-error').innerHTML="Please fill out this field";
        }
        else
        {
            if(password.length<8)
            {
                document.querySelector('.password-error').classList.add('active');
                document.querySelector('.password-error').innerHTML="Password length must be 8 character";
            }
            else if(password.search(/[0-9]/)==-1)
            {
                document.querySelector('.password-error').classList.add('active');
                document.querySelector('.password-error').innerHTML="Password must contain atleast 1 digit";
            }
            else if(password.search(/[a-z]/)==-1)
            {
                document.querySelector('.password-error').classList.add('active');
                document.querySelector('.password-error').innerHTML="Password must contain atleast 1 small alphabet";
            }
            else if(password.search(/[A-Z]/)==-1)
            {
                document.querySelector('.password-error').classList.add('active');
                document.querySelector('.password-error').innerHTML="Password must contain atleast 1 capital alphabet";
            }
            else if(password.search(/[!\@\#\$\%\^\&\*\(\)\-\_\+\=\|\[\]\{\}\'\"\:\;\/\?\>\.\<\,]/)==-1)
            {
                document.querySelector('.password-error').classList.add('active');
                document.querySelector('.password-error').innerHTML="Password must contain atleast 1 special symbol";
            }
            else
            {
                document.querySelector('.password-error').classList.remove('active');
                c++;
            }   
        }


        if(confirm.length<1)
        {
            document.querySelector('.confirm-error').classList.add('active');
            document.querySelector('.confirm-error').innerHTML="Please fill out this field";
        }
        else
        {
            if(password!=confirm)
            {
                document.querySelector('.confirm-error').classList.add('active');
                document.querySelector('.confirm-error').innerHTML="Password not match";
                d--;
            }
            else
            {
                document.querySelector('.confirm-error').classList.remove('active');
                d++;
            }  
        }

        if( (a==0) && (b==0) && (c==0) && (d==0))
        {
            document.querySelector("#button").setAttribute("type","button");
        }
        else if((a>0) && (b>0) && (c>0) && (d>0))
        {
            document.querySelector("#button").setAttribute("type","submit");
        }

    }

    </script>

</html>