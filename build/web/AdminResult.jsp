 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@800&family=Baloo+Bhaina+2:wght@800&display=swap" rel="stylesheet">
    <style>
        /* CSS RESET  */
        body{
            font-family: 'Baloo Bhai 2', cursive;
            margin: 0px;
            padding: 0px;
            background: url(Images/Student7.jpg);
            background-repeat:no-repeat ;
           background-size: 1550px 800px;  
           font-family: Baloo Bhai;  
           
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
        <li><a href="StudentList.jsp"> Student List</a> </li>
        <li><a href="AddQuestion.jsp">Update Student</a></li>
        <li><a href="QuestionList.jsp">Question List</a></li>
        <li> <a href="UpdateQuestion.jsp">Update Question</a></li>
        <li><a href="AdminResult.jsp">Result</a></li>
        <li><a href="AdminChangePswd.jsp">Change Password</a></li>
        <li><a href="Logout">Log Out</a></li>
        </ul>
    </div><hr>
    </header>
<center>
    <div style="width: 1000px; height: 500px; background-color: cornsilk;border: 5px brown;">
        <h1 style="color: brown;"><u>Student Result Sheet</u></h1>
        <table width="800" cellspacing="0" cellpadding="8" border="1">
            <tr bgcolor="yellow"><th>User Name </th><th>Maximum</th><th>Obtained</th>
                <th>Exam Date & time</th></tr>
            <%
                DB.DBCon db=new DB.DBCon();
                db.pstmt=db.con.prepareStatement( "select *from result_mstr");
                db.rst=db.pstmt.executeQuery();
                while (db.rst.next())
                {
                     out.println("<tr><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td><td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td><tr>");
                }  %>
        </table>
    </div>
</center>
    
</body>
</html>