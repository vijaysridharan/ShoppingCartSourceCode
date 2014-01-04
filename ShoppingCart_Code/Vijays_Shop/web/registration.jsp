<%-- 
    Document   : registration
    Created on : Feb 15, 2013, 8:25:29 PM
    Author     : vj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to India's Improvement Registration Page</title>
        <link rel="stylesheet" href="vijays_shop.css" type="text/css">        
    </head>
    <body>
        <div id="big_wrapper">
            <form action="Controller" method="Post">
                <center>
                    <h1> Welcome to Registration Page!! </h1>
                </center> <br> <br> 
                <div>
                    <center>
                        <pre>
                Username <input type="text" name="registration_username" > <br>
                Password <input type="password" name="registration_password"> <br> <br>                
                        </pre>
                        <input type="submit" name="registration_submit" value="Register">
                        <input type="reset" value="Reset">    <br> <br>
                        <a href="index.jsp"> back </a>

                    </center>
                </div>

            </form>
        </div>
    </body>
</html>
