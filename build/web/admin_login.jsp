 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .box{
            background-color:greenyellow;
            width: 400px;
            height: 400px;
            border-radius: 12px;
            margin-top: 100px;
            box-shadow: 12px 12px lightgoldenrodyellow;
         }
         #login{
             color:skyblue;
             padding-top: 20px;
             
         }
         .table{
             width: 300px;
             height: 180px;
            color: white;
            padding: 30px;
            font-size: 25px;
            border-radius: 12px;
            padding: 10px;
            border: solid gray;
                     }
                     #button{
                         width: 300px;
                         height:50px ;
                         background: yellow ;
                         border-radius: 13px;
                         font-size: 33px;
                          }
                          #td input
                          {
                         width: 300px;
                         height:43px ;
                         background: white;
                         border-radius: 13px;
                         font-size: 33px;

                          }
                        #td select
                        {
                         width: 305px;
                         height:43px ;
                         background: white;
                         border-radius: 13px;
                         font-size: 33px; 
                        }
                        
    </style>
</head> 
<body bgcolor="	#383838">
    
   <center><div class="box"><h1 id="login"> Admin Login </h1><hr>
           <form action="AdminLoginConf">
    <table class="table" id="td">
       
        <tr><td><input type="text" name="user" placeholder="User Name"></td></tr>
<tr><td><input type="password" name="pswd" placeholder="Password"></td></tr>
</table>
               <br>
        
               <br>
 <input type="submit" style="background-color:yellow;"  value="Login" id="button">
    <hr>
   
</form>
</div></center> </body>
</html>