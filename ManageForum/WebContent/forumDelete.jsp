
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
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #0c0f38">
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
			width: 50%;  
			height: auto;  
}  
                </style>
            </header>


            <!--add content in here    -->
            

<center>

<% 


String  id = request.getParameter("id");
String name = request.getParameter("name");
String content = request.getParameter("content");
String catagory =request.getParameter("catagory");
String createdby = request.getParameter("createdby");

%>
<br>

<h1>Delete Forum</h1>
<br><br>

<form action="delete" method="post" >

Forum ID: 			<input type="text" name="forumid" value=" <%=id %>  "readonly>               <br><br> <br>
Forum Name:			<input type="text" name="forumName"  value=" <%=name %>"readonly>            <br><br>
Content:			<input type="text" name="forumContent" value=" <%=content %>" readonly>      <br><br>
Catagory:		    <input type="text" name="forumCatagory"  value="<%=catagory %>" readonly>    <br><br>
CreatedBy:			<input type="text" name="createdby"  value=" <%=createdby %>"  readonly>     <br><br>
			
			<br>
			<input type="submit" name="delete" value="Delete Forum"><br> <br>

</form>

</center>

            <br><br>
             <br><br> <br><br>
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





















<%-- 
<% 


String  id = request.getParameter("id");
String name = request.getParameter("name");
String content = request.getParameter("content");
String catagory =request.getParameter("catagory");
String createdby = request.getParameter("createdby");

%>

<h1>Delete Forum</h1>


<form action="delete" method="post" >

Forum ID: 			<input type="text" name="forumid" value=" <%=id %>  "readonly>               <br>
Forum Name:			<input type="text" name="forumName"  value=" <%=name %>"readonly>            <br>
Content:			<input type="text" name="forumContent" value=" <%=content %>" readonly>      <br>
Catagory:		    <input type="text" name="forumCatagory"  value="<%=catagory %>" readonly>    <br>
CreatedBy:			<input type="text" name="createdby"  value=" <%=createdby %>"  readonly>     <br>
			
			
			<input type="submit" name="delete" value="Delete Forum"><br>

</form>

 --%>

