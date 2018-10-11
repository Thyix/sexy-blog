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
    String query = String.format("SELECT * FROM post JOIN tag where post.id_post = %s and post.id_tag = tag.id_tag", id);  
    
    pst = connection.prepareCall(query);
    rs = pst.executeQuery();
    
    rs.first();
    JSONObject element = new JSONObject();
    element.put("id_post", rs.getString("id_post"));
    element.put("date_post", rs.getString("date_post"));
    element.put("title_post", rs.getString("title_post"));
    element.put("content_post", rs.getString("content_post"));
    element.put("pictureURL_post", rs.getString("pictureURL_post"));        
    element.put("name_tag", rs.getString("name_tag"));
    element.put("id_tag", rs.getString("id_tag"));
    
    rs.close();
    pst.close();
    connection.close();
    
    out.print(element);
    out.flush();
%>
