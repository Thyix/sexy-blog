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
    pst = connection.prepareCall("SELECT * FROM post");
    rs = pst.executeQuery();
%>
<%
    rs.first();
%>
<%
    JSONObject obj = new JSONObject();
    
    obj.put("id_post", rs.getString("id_post"));
    obj.put("date_post", rs.getString("date_post"));
    obj.put("title_post", rs.getString("title_post"));
    obj.put("content_post", rs.getString("content_post"));
    obj.put("pictureURL_post", rs.getString("pictureURL_post"));
    
    out.print(obj);
    out.flush();
%>
