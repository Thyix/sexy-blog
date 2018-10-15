<%@page import="java.text.SimpleDateFormat"%>
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
    // pass it extra
    String id = request.getParameter("id_post");
    
    String title = request.getParameter("title_post");
    String date = request.getParameter("date_post");
    String tag = request.getParameter("tag_post");
    String content = request.getParameter("content_post");
    String pictureURL = request.getParameter("pictureURL_post");
  
    pst = connection.prepareCall("UPDATE post set title_post = ?, date_post = ?, id_tag = ?, content_post = ?, pictureURL_post = ? WHERE id_post = ?");
    
    pst.setString(1, title); 
    pst.setDate(2, convertDate(date));    
    pst.setInt(3, Integer.parseInt(tag));
    pst.setString(4, content);
    pst.setString(5, pictureURL);
    
    pst.setInt(6, Integer.parseInt(id));
    
    pst.executeUpdate();
    
    pst.close();
    connection.close();   
    
   response.sendRedirect("../blog.jsp");
%>
<%!
    public java.sql.Date convertDate(String receivedDate) {
        SimpleDateFormat simpleDate = new SimpleDateFormat("MM/dd/yyyy");
        java.util.Date date = null;
        try {
            date = simpleDate.parse(receivedDate);
        } catch (Exception e) {
            System.out.print("La conversion n'a pas fonctionnée.");
            return null;
        }
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        return sqlDate;
    }
%>
