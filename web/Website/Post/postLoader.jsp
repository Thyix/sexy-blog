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
    String pageNumber = request.getParameter("pageNumber");
    String postPerPage = request.getParameter("postPerPage");
    
    String categoryId = request.getParameter("categoryId");
 
    int firstPostIndex = Integer.parseInt(pageNumber) * Integer.parseInt(postPerPage);
    String query = "";
    
    if(categoryId != null && !categoryId.isEmpty()) {
       query = String.format("SELECT * FROM post JOIN tag WHERE post.id_tag=%s and post.id_tag = tag.id_tag ORDER BY date_post DESC LIMIT %s, %s", categoryId, firstPostIndex, postPerPage);
    } else {
       query = String.format("SELECT * FROM post JOIN tag where post.id_tag = tag.id_tag ORDER BY date_post DESC LIMIT %s, %s", firstPostIndex, postPerPage);      
    }
    
    pst = connection.prepareCall(query);
    rs = pst.executeQuery();
    
    //https://docs.oracle.com/javaee/7/api/javax/json/JsonObject.html
    JSONArray array = new JSONArray();
    while (rs.next()) {  
        JSONObject element = new JSONObject();
        element.put("id_post", rs.getString("id_post"));
        element.put("date_post", rs.getString("date_post"));
        element.put("title_post", rs.getString("title_post"));
        element.put("content_post", rs.getString("content_post"));
        element.put("pictureURL_post", rs.getString("pictureURL_post"));
        
        element.put("name_tag", rs.getString("name_tag"));
        
        array.put(element);
    }
    
    rs.close();
    pst.close();
    connection.close();
    
    out.print(array);
    out.flush();
%>
