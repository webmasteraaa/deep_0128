<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <html lang="en-US">
  <head>

    <meta charset="utf-8">

    <title>Login</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">

    <!--[if lt IE 9]>
  <script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
 <![endif]-->

  </head>

  <body>

    <div class="container">

      <div id="login">

        <h2><span class="fontawesome-lock"></span>Sign In</h2>

        <form action="../LServlet" method="POST">

          <fieldset>
             <p><label for="email">E-mail address</label></p>
            <p><input type="email" id="email" name="email" placeholder="mail@address.com"></p>

            <p><label for="password">Password</label></p>
            <p><input type="password" id="password" name="password" placeholder="password"></p>

            <p><input type="submit" value="Sign In"></p>

          </fieldset>

        </form>

      </div> <!-- end login -->

    </div>

  </body>	
</html>
  
  
</body>
</html>
