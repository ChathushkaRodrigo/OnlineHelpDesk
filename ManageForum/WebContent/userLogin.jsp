<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>

        <head>
            <title>Online Help Desk</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                crossorigin="anonymous">
                
                
                <style>
                		
                body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #ADD8E6}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

body{
  background-color: #ADD8E6;

}


button {
  background-color: #04AA6D;

  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  border-radius: 
}


button:hover {
  opacity: 0.8;
  border-radius: 25px 0;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
  
  .back{
   background-color: lime;
  }
}
                
                
                
                
                
                
                
                </style>
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #0c0f38">
                    <div>
                        <a href="" class="navbar-brand"> Online Help Desk </a>
                    </div>

                    <ul class="navbar-nav">
                     
                    </ul>
                </nav>
            </header>
            <!--add content in here    -->
            
            
            
      <!--   <div class="container">
            <form action="login" method="post">
      
            User Email <input type="text" name="email" placeholder="shriya@fmail.com">
            <br>
            
            Password <input type="password" name="pass"> <br>
            
            <input type="submit" name="sub" value="Login">
            
            
            </form>
            </div>
      
            <br>
             -->
            
            
            
            <!-- ---------------- -->
            
            <center>
            <h2>Login </h2>

<form action="login" method="post">
  <div class="imgcontainer">
    <img src="images/avatar.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="email"><b>User Email</b></label>
    <input type="text" placeholder="Enter Username" name="email" required>

    <label for="pass"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>
        
    <button type="submit">Login</button>
    
  

 
</form>
            </div>
        </center>    
        
            <!-- ------- -->
            
            
            
            
            
            
            
            
            
            
            
            
            
            <footer>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #0c0f38">
                    <div>
                        <a href="" class="nav-link"> About Us </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link"> Contact Us</a></li>
                    </ul>
                </nav>
            </footer>
        </body>

        </html>