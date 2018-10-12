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
    String id = request.getParameter("idPost");
    pst = connection.prepareStatement("DELETE from post where id_post = ?");
    pst.setInt(1, Integer.parseInt(id));
    pst.executeUpdate();
    
    pst.close();
    connection.close();
    
    JSONObject element = new JSONObject();
    element.put("mkay", "Success");
    out.print(element);
    out.flush();
%>
