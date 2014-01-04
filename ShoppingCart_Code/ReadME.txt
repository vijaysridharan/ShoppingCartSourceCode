Swagatam, 

I have attached 2 zip files. 

1) Vijay_Shop contains the source code. This project is in Netbeans. 

2) Schema_Mysql_Db contains the India_db schema which is used for this project and, make sure you add the mysql-connector-java-5.1.22 to your libraries. 


Note: 

1. The server used for the above project is Apache TomCat 7.0.33. If you are getting the following error in controller.java, "cannot import javax.servlet". Please make sure the server is up and running. You can use the  Apache Tomcat 7.0.33 or up. 

2. If you are getting error stating the deployment descriptor was not found or changed. Then, please create a new project and all the source files present in the Vijay_Shop to your new project. That should fix it the error. 

To add the India_db into the project. Do the following steps. 

1. Right click on the project name, Vijay_Shop. Click on properties. 
2. Click on Libraries--> Click on Add Jar/Folder. 
3. Add mysql-connector-java-5.1.22-bin.jar. 

The above jar is used in com.util.DAOConnection.java. 

Let me know if you have any questions.:) 

Regards, 
Vijay. 

