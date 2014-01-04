
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.util.*" %>
<%@ page errorPage="error.jsp"%>
<% ArrayList itemname = new ArrayList();%>
<% ArrayList quantityno = new ArrayList();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="vijays_shop.css">        
        <style type="text/css">
            #big_wrapper{
                text-align: center;
                background-color: burlywood;
            }
            table{
                background-color: teal;
                color:white;
                margin-bottom: 20px;
            }
            #payment{
                position: absolute;
                top: 65px;
                left: 1100px;
            }
        </style>
    </head>
    <body>

        <form name="logout" action="Controller" method="Post">
            <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
        </form>         

        <div id="big_wrapper">
            <center>

                <% itemname = (ArrayList) session.getAttribute("product_in_cart");
                    quantityno = (ArrayList) session.getAttribute("quantity_in_cart");%>
                <jsp:useBean id="product_in_cart" class="java.util.ArrayList" scope="session" ></jsp:useBean>
                <% //out.println("Product in cart = " + product_in_cart ); used a JSTL 
                        if (itemname != null) {%>
                <br />        
                <h1> Items in your cart </h1> <br /> 
            </center>
            <div id="payment">
                <form action="Controller" method="Post">
                    <div class="logmeout"> <input type="submit" name="signout" value="Log out"> </div>
                    <input type="submit" name="payment" value=" Payment " />
                </form>
            </div>
            <center>
                <table border="1" cellspacing="5" cellpadding="5">
                    <tr>
                        <th> No. of items </th>
                        <th> Item Name </th>
                        <th> Quantity </th>
                    </tr>            
                    <% for (int i = 1; i <= itemname.size(); i++) {%>
                    <tr>
                        <td> <%=i%> </td>
                        <td>  <%= itemname.get(i - 1)%>   </td>
                        <td> <%= quantityno.get(i - 1)%> </td>              
                    </tr>
                    <%}%>
                </table>
                <%}%>   
                <%  if (itemname == null) {%>
                <h1> There are no items in your cart now.. Please add items to your cart first!! </h1>
                <%}%>
            </center>
        </div>
    </body>

</html>
