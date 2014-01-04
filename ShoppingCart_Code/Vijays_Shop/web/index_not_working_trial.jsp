<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="vijays_shop.css">
        <title>JSP Page</title>
    </head>
    <body>
        <!--script type="text/javascript">
            function form_validation(){
            var name=document.Login_Form.login_name.value;
            var password=document.Login_Form.login_password.value;
            var flag = "true"; 
            //alert(name);
            if(name==""){
                document.getElementById("invalid_login").style.color=red;
                document.getElementById('invalid_login').innerHTML="Name is mandatory!";
                flag = "false";
            }             
            if(password==""){
                document.getElementById("invalid_login").style.color=red;
                document.getElementById('invalid_login').innerHTML="Password is mandatory!";
                flag = "false";
            }    
            return false;
            }
        </script-->

        <div id="invalid_login"> </div>

        <div id="login_in">
            <form name="Login_Form" action="Controller" method="Post">
                Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                Password    <input type="password" maxlength="40" name="login_password">             
                <input type="submit" name="login_submit" value="Submit" onclick="return form_validation()">             
            </form>
        </body>
</html>
