

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>

        <head>
            <title>Online Help Desk</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                crossorigin="anonymous">
            <style type="text/css">
            
            
              body {
       
        background: #ADD8E6;
      }
            
              img {  
			width: 50%;  
			height: auto;  
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
                        <li><a href="searchForum.jsp" class="nav-link">Search</a></li>
                    </ul>
                    <ul class="navbar-nav">
                        <li><a href="forumInsert.jsp" class="nav-link">Create</a></li>
                    </ul>
                    
                </nav>
            </header>


            <!--add content in here    -->
          <br><br>
 <center>   
            <h1>Search Forum</h1>
            
            <img src="images/search.gif"> 


<form action="search" method = "post"  id = "searchforum">

		 
	 
	Forum Name <br><br> <input type ="text" name = "forumname"><br><br> <br>

	Forum Catagory: <br><br>
	
	
			<select name="forumcatagory" id="forumcatagory">
			  <option value="Nature">Nature</option>
			  <option value="Industry">Industry</option>
			  <option value="Education">Education</option>
			  <option value="Programming Languages">Programming Languages</option>
			  <option value ="Country"> Country </option>
			  <option value = "Technology"></option>
			</select>
<br>
				
	
	
	
	<br><br>
	<input type="submit" name ="submit" value ="Search">


</form>
</center> 


	





<br><br><br><br>


<br><br><br>

            <br><br><br><br><br><br>
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

















<!-- <center>

<form action="search" method = "post"  id = "searchforum">

		 
	 
	Forum Name <br> <input type ="text" name = "forumname"><br><br>

	Forum Catagory: <br>
	
	
			<select name="forumcatagory" id="forumcatagory">
			  <option value="Nature">Nature</option>
			  <option value="Industry">Industry</option>
			  <option value="Education">Education</option>
			  <option value="Programming Languages">Programming Languages</option>
			  <option value ="Country"> Country </option>
			  <option value = "Technology"></option>
			</select>
<br>
				
	
	
	
	
	<input type="submit" name ="submit" value ="Search">


</form>
</center> -->
