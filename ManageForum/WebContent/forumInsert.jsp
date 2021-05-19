
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>

        <head>
            <title>Online Help Desk</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color:#0c0f38">
                    <div>
                        <a href="" class="navbar-brand"> Online Help Desk </a>
                    </div>

                    <ul class="navbar-nav">
                         <li><a href="searchForum.jsp" class="nav-link">Search</a></li>
                    </ul>
                </nav>
                
               <style>
               
               body{
               background-color: #ADD8E6;
               }
               
              img {  
			width: 10%;  
			height: 20%;  
}  
               </style>
                
            </header>


            <!--add content in here    -->
            
<center>
 <br><br>
 
 <img src="images/doc.gif" id ="pic1" >  <br>
 
 
<form action="insert" method="post">


		<h2>Forum Name</h2> <br> <input type ="text" name ="fname"> <br><br>
		
	<h3>Write Forum Content </h3> <br>
		
		<textarea id="content" name="content" rows="20" cols="50" placeholder="Write your content">
		</textarea>
		<br><br> <br>
		<h4>Forum Catagory :</h4><br>
		
		
		
		
		
		<select name="fcatagory" id="fcatagory">
			  <option value="Nature">Nature</option>
			  <option value="Industry">Industry</option>
			  <option value="Education">Education</option>
			  <option value="Programming Languages">Programming Languages</option>
			  <option value ="Country"> Country </option>
			  <option value = "Technology"></option>
			</select>
		

		
		<br> <br>
		
		<h4>Created by</h4>
		<input type="text" name="fcreatedby"><br><br>
	
				
		<input type ="submit" name="insertforum" value= "Create new forum"> 
		



</form>
<br>

 


</center>








<br><br>
            
            
            <footer>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color:#0c0f38">
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



<!-- <br><br>
<form action="insert" method="post">


		<h2>Forum Name</h2> <br> <input type ="text" name ="fname"> <br><br>
		
	<h3>Write Forum Content </h3> <br>
		
		<textarea id="content" name="content" rows="50" cols="90" placeholder="Write your content">
		</textarea>
		<br><br> <br>
		<h4>Forum Catagory :</h4><br>
		
		
		
		
		
		<select name="fcatagory" id="fcatagory">
			  <option value="Nature">Nature</option>
			  <option value="Industry">Industry</option>
			  <option value="Education">Education</option>
			  <option value="Programming Languages">Programming Languages</option>
			  <option value ="Country"> Country </option>
			  <option value = "Technology"></option>
			</select>
		

		
		<br>
		
		<h4>Created by</h4>
		<input type="text" name="fcreatedby"><br><br>
	
				
		<input type ="submit" name="insertforum" value= "Create new forum"> 
		



</form>
<br>
<img src="images/paper.gif" id ="pic1" > -->