 <!DOCTYPE html>
<html lang="en">
    <head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=devicewidth, initial-scale=1.0">
 <title>Document</title>
 <style>
 /* CSS RESET */
 body{
 margin: 0px;
 padding: 0px;
 background: url(Images/Student7.jpg);
 background-repeat:no-repeat ;
 background-size: 1550px 800px;
 }
 .navbar
 {
 display: inline-block;
 border: 3px solid white;
 margin-left: 2%;
 margin-top: 25px;
 border-radius: 5px;
 /* position: fixed; */
 }
 .navbar li{
 display: inline-block;
 }
 .navbar li a{
 color: white;
 font-size: 23px;
 padding: 60px;
 text-decoration: none;
 }
 .navbar li a:hover{

 color: grey;
 font-size: 23px;
 padding: 60px;
 text-decoration: none;
 }

 </style>
</head>
<body>
    <header>
 <div class="navbar">
 <ul>
 <li><a href="StuProfile.jsp">Profile</a> </li>
 <li><a href="StartExam.jsp">Exam</a></li>
 <li><a href="StuResult.jsp">Result</a></li>
 <li><a href="StuChangePswd.jsp">Change
Password</a></li>
 <li><a href="Logout">Logout</a></li>
 </ul>
 </div><hr>
 </header><center>
<div style="width:1000px;height:550px;background-color:antiquewhite;border:5px solid brown;">
<h1 style="color:brown;">Student Result</h1>
 <table width="400" cellspacing="0" cellpadding="10" border="1">
 <%
 String
user=session.getAttribute("user").toString();
 DB.DBCon db=new DB.DBCon();
 db.pstmt=db.con.prepareStatement("select * from result_mstr where user=?");
 db.pstmt.setString(1, user);
 db.rst=db.pstmt.executeQuery();
 if(db.rst.next())
 {
 out.println("<tr><td width=220>User Name</td><td>"+db.rst.getString(1)+"</td></tr>");
 out.println("<tr><td>Maximum Marks</td><td>"+db.rst.getString(2)+"</td></tr>");
 out.println("<tr><td>Obtained Marks</td><td>"+db.rst.getString(3)+"</td></tr>");
 out.println("<tr><td>Exam Date and Time</td><td>"+db.rst.getString(4)+"</td></tr>");
 }
 %>

 </table
 </div>
</center>
</body>
</html>