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
        <li> <a href="stuChangepswd.jsp">Change Password</a></li>
        <li><a href="Logout">Logout</a></li>
        </ul>
    </div><hr>
    </header>
<center>
    <div style="width:800px; height: 400px; background-color: oldlace;
         border: 5px solid brown;">
        <h1 style="color: brown;">Change Password</h1>
        <form action="StuChangePassword">
            <table width="600" cellspacing="0" cellpadding="10" border="1">
                <tr><td>Old Password</td><td><input type="password" name="opswd"></td></tr>
                <tr><td>New Password</td><td><input type="password" name="npswd"></td></tr>
                <tr><td>Confirm Password</td><td><input type="password" name="cpswd"></td></tr>
                <tr><th colspan="2"><input type="submit" value="Update Password"></td></tr>
            </table>
        </form>
    </div>
</center>
    
</body>
</html>