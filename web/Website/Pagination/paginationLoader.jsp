<%@page import="org.json.JSONArray"%>
<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@page import="org.json.JSONObject"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>      
<%          
    Connection connection;
    PreparedStatement pst;
    ResultSet rs;  

    // Load the JDBC driver      
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 

    String serverName = "localhost";      
    String mydatabase = "sexy-blog";      
    String url = "jdbc:mysql://" + serverName + "/" + mydatabase; // a JDBC url      
    String username = "root";      
    String password = "";     
    connection = DriverManager.getConnection(url, username, password);             
%>
<%
    String categoryId = request.getParameter("categoryId");
    
     if(categoryId != null && !categoryId.isEmpty()) {
      pst = connection.prepareCall(String.format("SELECT count(*) FROM post WHERE id_tag = %s", categoryId));
    } else {
      pst = connection.prepareCall("SELECT count(*) FROM post");
    }
    
    rs = pst.executeQuery();
    rs.first();
    
    JSONObject element = new JSONObject();
    element.put("count_post", rs.getString((1)));
    
    rs.close();
    pst.close();
    connection.close();
    
    out.print(element);
    out.flush();
%>