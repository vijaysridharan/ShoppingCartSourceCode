

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vijays_shop.css" type="text/css" /> 
        <style type="text/css">
            #big_wrapper{
                text-align: center;
                background-color: sienna;
                color:white;
            }
            #link.active{
                color:white;
            }
        </style>
    </head>
    <body>        
        <form action="Controller" method="Post">                   
                <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
        </form>
        <div id="big_wrapper">
            <% String Confirmation = (String) session.getAttribute("Order_Confirmation");
                if (Confirmation == null) {
            %>

            <form action="Controller" method="Post">                   
                <!--div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div-->
                <h2> Payment Information </h2> <br /> <br />
                Card Type <select name="card_type">
                    <option> American Express </option>   
                    <option> Citi Bank </option>   
                    <option> Disover </option>   
                    <option> Bank of America </option>   
                </select> <br /> <br />                                         
                Card Number <input type="text" value="" maxlength="16" name="card_number" /> <br /> <br />
                Name on Card <input type="text" value="" maxlength="20" name="card_name" /> <br /> <br />
                Expiration Date <select name="expiration_month">
                    <option> 1 </option> <option> 2 </option> <option> 3 </option> <option> 4 </option>   
                    <option> 5 </option> <option> 6 </option> <option> 7 </option> <option> 8 </option>   
                    <option> 9 </option> <option> 10 </option> <option> 11 </option> <option> 12 </option>   
                </select>                      
                <select name="expiration_year">
                    <option> 2013 </option>   
                    <option> 2014 </option>   
                    <option> 2015 </option>   
                    <option> 2016 </option>   
                </select> <br />  <br /> <br />

                <h2> Billing Information </h2> <br /> <br /> 
                Full Name <input type="text" value="" name="fullname" /> <br /> <br />
                Address  &nbsp; &nbsp; <input type="text" value="" name="address" /> <br /> <br />
                Country  &nbsp; <input type="text" value="" name="country" /> <br /> <br />
                Zip &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" value="" name="zipcode" /> <br /> <br />
                <input type="submit" name="place_order" />              


                <% }  // ending billing n payment info %>
                <%
                    if (Confirmation != null) {
                %>

                <!--div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div-->

                <h1> Order Has been submitted!! Look out for your product!!!  <br /> <br /> <br /> 
                    Thank you for ordering at Vijay's Shopss </h1>  <br /> <br /> <br /> <br /> <br />
                <div id="link">    <h2> <a href="index.jsp"> Shop Again! </a> </h2> </div>
                <% }%>

            </form>         
        </div>
    </body>
</html>
