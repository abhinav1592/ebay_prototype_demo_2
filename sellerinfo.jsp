<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String sellerid=request.getParameter("id"); 
session.setAttribute("sellerid",sellerid); 
String sellername=request.getParameter("name"); 
String selleraddress=request.getParameter("address_shipping"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into seller values ('"+sellerid+"','"+sellername+"','"+selleraddress+"')"); 

out.println("Registered");
%>