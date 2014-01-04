<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String name=(String) request.getAttribute("name");
String names=(String) session.getAttribute("name");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="vijays_shop.css">
        <title>JSP Page</title>
    </head>
    <body>

        <script type="text/javascript">
            function form_validation(){
            var name=document.Login_Form.login_name.value;
            var password=document.Login_Form.login_password.value;
            var flag = true;             
            if(name==""){
                document.getElementById("invalid_login").style.color="red";
                document.getElementById('invalid_login').innerHTML="UserName is mandatory!";
                flag = false;
            }             
            if(password==""){
                document.getElementById("invalid_login").style.color="red";
                document.getElementById('invalid_login').innerHTML="Password is mandatory!";
                flag = false;
            }    
            return flag;
            }
        </script>
        
        <!--div id="date">  Current Time =  <%=new Date() %> </div-->
        <div id="invalid_login"> </div>
        <% String authentication = (String) session.getAttribute("authentication");            
            if (authentication == null) {
        %>                
        <div id="login_in">
            <form name="Login_Form" action="Controller" method="Post">
                <div align="right">                       
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">             
                    <input type="submit" name="login_submit" value="Submit" onclick="return form_validation()">             
                    <a href="registration.jsp"> Register </a>
                </div>                    
            </form>
            <% }
                if (authentication != null) { if(authentication.equals("Auth_Success"))
                { // out.println("authentication = " + authentication);
            %>
            <div id="user_info"> Swagatam  <span style="color:green">   <i> </i>  </span> </div>
            <form name="logout" action="Controller" method="Post">
                <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
            </form>            
            <%} else { %>
            <div id="wrong_user"> <span style="color:red"> Username/Password is wrong! </span> </div>
              <form name="Login_Form" action="Controller" method="Post">
                <div id="login_in" align="right">                       
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">             
                    <input type="submit" name="login_submit" value="Submit" onclick="return form_validation()">             
                    <a href="registration.jsp"> Register </a>
                </div>                    
            </form>
          
            <%}}%>

        </div>  
        <div id="big_wrapper">            
            <header id="top_header">  Vijay's Shopss </header>
             
            <section id="main_content">
                <article id="main_article">
                    <select name="Item">
                        <option> Books </option>
                        <option> Electronics </option>
                        <option> House Hold Stuffs</option>
                    </select>
                </article>
                <article id="main_article">
                    Use your coupon code here. This would reduce your cost. :)
                    Thank you for shopping at Vijay's Shop. Hope to see you again.!
                </article>            
            </section>

            <aside id="updates"> The latest products and services that we offer are updated here. 
                We offer a whole range of kitchen items now. </aside>
            <footer id="the_footer"> @Copyright Vijay 2013  </footer>
        </div>
    </body>
</html>
