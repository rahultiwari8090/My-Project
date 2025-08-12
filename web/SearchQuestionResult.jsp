 
<%@page import="DB.DBCon"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=devicewidth, initial-scale=1.0">
 <title>Student List</title>
 <style>
 /* CSS RESET */
 body{
 font-family:Century Gothic;
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
 margin-left: 0%;
 margin-top: 25px;
 border-radius: 5px;
 }
 .navbar li{
 display: inline-block;
 }
 .navbar li a{
 color: red;
 font-size:23px;
 padding: 15px;
 text-decoration: none;
 }
 .navbar li a:hover{

 color: black;
 font-size:23px;
 padding:15px;
 text-decoration: none;
 }
 </style>
</head>
<body>
 <header>
 <div class="navbar">
 <ul>
<li><a href="StudentList.jsp">Student List</a>
</li>
 <li><a href="AddQuestion.jsp">Add
Question</a></li>
 <li><a href="QuestionList.jsp">Question
List</a></li>
 <li> <a href="UpdateQuestion.jsp">Update
Question</a></li>
 <li><a href="AdminResult.jsp">Result</a></li>
 <li><a href="AdminChangePswd.jsp">Change
Password</a></li>
 <li><a href="Logout">Log Out</a></li>
</ul>
 </div><hr>
 </header>
 <center>
 <br><br>
 <div
style="width:1200px;height:450px;background-color:lightgrey;border:2px solid red;">
<h1 style="color:brown"><u>Update
Question</u></h1>
<form action="UpdateDeleteQuestion">
<table width="600" cellspacing="0" cellpadding="5"
border="1" >
<%
String qid=request.getParameter("qid");
DBCon db=new DBCon();
db.pstmt=db.con.prepareStatement("select * from ques_mstr where qid=?");
db.pstmt.setString(1, qid);
db.rst=db.pstmt.executeQuery();
if(db.rst.next())
{
out.println("<tr><td width=300>Enter QuestionID</td><td><input type=number value='"+db.rst.getString(1)+"' name=qid></td></tr>");
out.println("<tr><td width=300>Question</td><td><input type=text value='"+db.rst.getString(2)+"'name=ques></td></tr>");
out.println("<tr><td width=300>Option1</td><td><input type=text value='"+db.rst.getString(3)+"'name=opt1></td></tr>");
out.println("<tr><td width=300>Option2</td><td><input type=text value='"+db.rst.getString(4)+"'name=opt2></td></tr>");
out.println("<tr><td width=300>Option3</td><td><input type=text value='"+db.rst.getString(5)+"'name=opt3></td></tr>"); 
out.println("<tr><td width=300>Option4</td><td><input type=text value='"+db.rst.getString(6)+"'name=opt4></td></tr>");
out.println("<tr><td width=300>Answer</td><td><input type=text value='"+db.rst.getString(7)+"'name=ans></td></tr>");
out.println("<tr><th><input type=submit value=Update name=opr></th><td><input type=submit value=Delete name=opr></td></tr>");

}
else
{
    out.println("<h1 style='color:red;'>Invalid Question ID: cant Search!!!</h1>");
}
%>
}
</table>
</form>
 </div>
 </center>
</body>
</html>
