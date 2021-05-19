
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">



<meta charset="UTF-8">
<title>Success</title>
</head>



 <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
        background-color: #ADD8E6;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 20px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
    </style>





<body>



 <div class="card">
      <div style="border-radius:200px; height:200px; width:300px; background: #F8FAF5; margin:0 auto; ">
        <i class="checkmark">✓</i>
      </div>
        <h1>Success</h1> 
        <p>Your operation was successful<br/> </p>
        
        <br>
        Do you want to create a new forum? : <br>
<button onclick="window.location.href='forumInsert.jsp'">Create forum</button> <br><br>



Search forum<br>
<button onclick="window.location.href='searchForum.jsp'">Search forum</button>
        <br><br>
        
        
 Go to home Page<br>
 
 <button onclick ="window.location.href='OnlineHelpDesk.html'">Home Page </button>       
        
      </div>









<br>


</body>
</html>