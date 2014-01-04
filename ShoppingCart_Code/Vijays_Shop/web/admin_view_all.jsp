
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vijays_shop.css" type="text/css" >
        <style type="text/css">
            #table_header{                
                background-color: orange;
                color:white;
            }
        </style>
    </head>
    <body>
        <%! ArrayList productname = new ArrayList();
            ArrayList productdescription = new ArrayList();
            ArrayList brandname = new ArrayList();
            ArrayList productprice = new ArrayList();
            ArrayList productid = new ArrayList();
        %>
        <%
            productname = (ArrayList) session.getAttribute("productname");
            productdescription = (ArrayList) session.getAttribute("productdescription");
            brandname = (ArrayList) session.getAttribute("brandname");
            productprice = (ArrayList) session.getAttribute("productprice");
            productid = (ArrayList) session.getAttribute("productid");
            System.out.println("productname = " + productname);
            System.out.println("productdescription = " + productdescription);
            System.out.println("brandname = " + brandname);
            System.out.println("productprice = " + productprice);
            System.out.println("productid = " + productid);            
        %>



        <% String classifier_name = "none";
            session.setAttribute("admin_mode", "view");
            String db_insertion_result = (String) session.getAttribute("db_insertion_result");
        //    out.println("Admin mode = " + (String) session.getAttribute("admin_mode"));
        //    out.println("insertion_result " + db_insertion_result);
            if ((String) session.getAttribute("classifier_name") != null) {
                classifier_name = (String) session.getAttribute("classifier_name");
               // out.println("Classifier name selected = " + classifier_name);
            }%>       
        
        <div id="big_wrapper">            
            <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
            <center><h2> Namaste Admin!! </h2></center> <br /> <br />
            <form name="admin" action="Controller" method="post">
                <nav id="links"> 
                    <ul>                                             
                        <li> <a href="admin_update.jsp" title="Update" > <img id="update"  border="0" src="Images/update.jpg" width="25" height="25" alt="Loading" /> </a> </li>
                        <li> <a href="admin_remove.jsp" title="Delete" > <img id="delete"  border="0" src="Images/delete.png" width="25" height="25" alt="Loading" /> </a> </li>
                        <li> <a href="admin_view_all.jsp" title="Insert" > <img id="view"  border="0" src="Images/view.jpg" width="75" height="75" alt="Loading" /> </a> </li>
                        <li> <a href="admin_insert.jsp" title="Insert" > <img id="insert"  border="0" src="Images/insert.jpg" width="75" height="25" alt="Loading" /> </a> </li>
                    </ul>
                </nav>
                <center>      <br /><h3> Select a product to view </h3> <br />  <br /> 
                    <% if (db_insertion_result != null) {
                            if (db_insertion_result.equals("success")) {%>
                    <span style="color:green">  <b> Insertion Successful!!  </b> </span> 
                    <% }
                        if (db_insertion_result.equals("failure")) {%>
                    <span style="color:red">  <b> Insertion Failure! Please try again!   </b> </span> 
                    <% }
                        }%>
                    <br /> <br />
                    <select name="admin_classifer_choice">
                        <option value=""> </option>
                        <option value="Books"> Books </option> 
                        <option value="Electronics"> Electronics </option>
                        <option value="Icecream"> Ice Cream </option> 
                    </select> 
                    <input type="submit"  value =" > " name="admin_view_all_products" /> <br /> <br /> 
                    <div id="admin_mode"> </div>
                    <% if ((String) session.getAttribute("classifier_name") != null) {
                            classifier_name = (String) session.getAttribute("classifier_name");%>      
                    Catogory Selected : <span style="color:green">  <b> <%= classifier_name%> </b> </span>

                    <% }%>      <br /> <br />
                    <% if (productname != null) {%> 
                    <table border="2" cellspacing="0" cellpadding="0">
                        <tr>
                        <div id="table_header">  <th> Item Id </th>
                            <th> Product Name </th>
                            <th> Brand/Author Name</th>
                            <th> Description </th>
                            <th> Price </th> 
                        </div>
                        </tr>

                        <%        for (int i = 1; i <= productname.size(); i++) {
                        %>  
                        <tr>
                            <td> <%= productid.get(i - 1)%> </td> 
                            <td> <%= productname.get(i - 1)%>        </td>                                
                            <td> <%= brandname.get(i - 1)%>          </td>
                            <td> <%= productdescription.get(i - 1)%> </td>
                            <td> <%= productprice.get(i - 1)%>       </td>
                        </tr>                    
                        <%
                        }%>
                    </table>
                    <% }%> 
                </center>
                <br /> <br />
                <form>
                    </div>
                    </body>
                    </html>




