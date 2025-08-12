<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* CSS RESET  */
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
            padding:  60px;
            text-decoration: none; 
        }
        .navbar li a:hover{
           
            color: grey;
            font-size: 23px;
            padding:  60px;
            text-decoration: none; 
        }

    
    </style>
</head>
<body>
    <header>
        <div class="navbar">
        <ul>
        <li><a href="stu_Profile.jsp"> Profile</a> </li>
        <li><a href="StartExam.jsp">Exam</a></li>
        <li><a href="StuResult.jsp">Result</a></li>
        <li> <a href="StuChangePswd.jsp">Change Password</a></li>
        <li><a href="Logout">Logout</a></li>
        </ul>
    </div><hr>
    </header>
<center>
    <div style="width:1000px;height: 600px; background-color: aliceblue; border:5px solid brown;">
        <h2><a> Student Profile</a></h2>
        
        <table width="450" border="1" cellpadding="10" cellspacing="0">
            <%
                String user=session.getAttribute("user").toString();
                DB.DBCon db=new DB.DBCon();
                db.pstmt=db.con.prepareStatement("select * from stu_mstr where user=?");
                db.pstmt.setString(1,user);
                db.rst=db.pstmt.executeQuery();
                if(db.rst.next())
                    
                        {
                          out.println("<tr><td width=200>Student Roll Number</td><td>"+db.rst.getString( 1)+"</td></tr>"); 
                           out.println("<tr><td >Student Name </td><td>"+db.rst.getString(2)+"</td></tr>");  
                          out.println("<tr><td>Date of Birth</td><td>"+db.rst.getString( 3)+"</td></tr>");  
                          out.println("<tr><td>Gender</td><td>"+db.rst.getString(4)+"</td></tr>");  
                          out.println("<tr><td>Course</td><td>"+db.rst.getString(5)+"</td></tr>");  
                          out.println("<tr><td>Semester</td><td>"+db.rst.getString(6)+"</td></tr>");  
                          out.println("<tr><td>Address</td><td>"+db.rst.getString(7)+"</td></tr>");  
                          out.println("<tr><td>Contact</td><td>"+db.rst.getString(8)+"</td></tr>");  
                          out.println("<tr><td>E mail</td><td>"+db.rst.getString(9)+"</td></tr>");  
                          out.println("<tr><td>User Name</td><td>"+db.rst.getString(10)+"</td></tr>");  
                          out.println("<tr><td>Password</td><td>"+db.rst.getString(11)+"</td></tr>");  
                          out.println("<tr><td >Registration Date</td><td>"+db.rst.getString(12)+"</td></tr>");  
                          out.println("<tr><th colspan=2><a href=UpdateProfile.jsp><input type=button value=Update></a></th></tr>");  
                        }
                else
                {
                    response.sendRedirect("index.html? msg=Please login First");
                }
                %>
        </table>
    </div>
</center>
</body>
</html>