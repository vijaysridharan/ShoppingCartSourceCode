<%-- 
    Document   : test_nothing
    Created on : Mar 12, 2013, 4:42:11 PM
    Author     : vj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

 <table>
            <tr>
                <th> No. of items </th>
                <th> Item Name </th>
                <th> Quantity </th>
            </tr>
            <% for (int i = 1; i < itemname.size(); i++) {%>
            <tr>
                <td> <%=i%> </td>
                <td> <%= itemname.get(i - 1)%>   </td>
                <td> <%= quantityno.get(i - 1)%> </td>              
            </tr>
            
        </table>
       <% }%>   <% } %>
