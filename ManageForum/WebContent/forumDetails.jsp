





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
            
            






<c:forEach var ="forum" items="${forumDetails}">



<c:set var="id" value="${forum.forumID} "/>
<c:set var="name" value="${forum.forumName} "/>
 <c:set var="content" value="${forum.forumContent} "/>
 <c:set var="catagory" value="${forum.forumCatagory} "/>
 <c:set var="createdby" value="${forum.createdBy} "/>
  

<br>

<center>
 <br> 


      <h1>${forum.forumName} </h1> <br>  <br>


       <textarea id="content" name="content" rows="30" cols="60"  readonly >
     
  ${forum.forumContent} 
</textarea> <br><br>
<br>



 Catagory :  <b> ${forum.forumCatagory} </b><br><br><br>
 



  Created By :  <b>  ${forum.createdBy} </b> <br><br><br>
  

	
Forum ID:   

<button width=20px; >
${forum.forumID}
</button>
<br>


<br>








</c:forEach>



<c:url value="updateForum.jsp" var ="forumupdate">

	<c:param name="id" value="${id} "/>
	<c:param name="name" value="${name} "/>
	<c:param name="content" value="${content} "/>
	<c:param name="catagory" value="${catagory} "/>
	<c:param name="createdby" value="${createdby} "/>


</c:url>
<h3>Update</h3>

<a href="${forumupdate}">
<input type="button" name="update"  value="Update">

</a>

<br>

<br>


<c:url value="forumDelete.jsp" var="forumdelete">



	
	<c:param name="id" value="${id} "/>
	<c:param name="name" value="${name} "/>
	<c:param name="content" value="${content} "/>
	<c:param name="catagory" value="${catagory} "/>
	<c:param name="createdby" value="${createdby} "/>



</c:url>
<h3>Delete</h3>
<a href="${forumdelete}">

<input type="button" name ="delete" value="Delete">
</a> 



</center>




<br><br>





            
            
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










<!-- 
<img src="images/octo.gif"> <br> -->

<%-- 
<c:forEach var ="forum" items="${forumDetails}">



<c:set var="id" value="${forum.forumID} "/>
<c:set var="name" value="${forum.forumName} "/>
 <c:set var="content" value="${forum.forumContent} "/>
 <c:set var="catagory" value="${forum.forumCatagory} "/>
 <c:set var="createdby" value="${forum.createdBy} "/>
  


      <h1><u>${forum.forumName}</u> </h1>   


       <textarea id="content" name="content" rows="30" cols="90"  readonly >
     
  ${forum.forumContent} 
</textarea> <br>


 Catagory :   ${forum.forumCatagory}<br><br>



  Created By :    ${forum.createdBy} <br>

	
Forum ID:   

<button width=20px; >
${forum.forumID}
</button>












</c:forEach>



<c:url value="updateForum.jsp" var ="forumupdate">

	<c:param name="id" value="${id} "/>
	<c:param name="name" value="${name} "/>
	<c:param name="content" value="${content} "/>
	<c:param name="catagory" value="${catagory} "/>
	<c:param name="createdby" value="${createdby} "/>


</c:url>
<h3>Update</h3>

<a href="${forumupdate}">
<input type="button" name="update"  value="Update">

</a>

<br>




<c:url value="forumDelete.jsp" var="forumdelete">



	
	<c:param name="id" value="${id} "/>
	<c:param name="name" value="${name} "/>
	<c:param name="content" value="${content} "/>
	<c:param name="catagory" value="${catagory} "/>
	<c:param name="createdby" value="${createdby} "/>



</c:url>
<h3>Delete</h3>
<a href="${forumdelete}">

<input type="button" name ="delete" value="Delete">
</a> --%>
