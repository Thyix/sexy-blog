<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    //String author = (String)session.getAttribute("author");
    String title = request.getParameter("title_post");
    String date = request.getParameter("date_post");
    String tag = request.getParameter("tag_post");
    String content = request.getParameter("content_post");
    String pictureURL = request.getParameter("pictureURL_post");
%>
<%
    //  TODO insert id_tag
    String query = "INSERT INTO post (date_post, title_post, content_post, pictureURL_post, id_tag) VALUES(?, ?, ?, ?, ?)";
    pst = connection.prepareStatement(query, 1005, 1008);
    pst.clearParameters();
    
    // TODO id_post auto-increment
    pst.setDate(1, convertDate(date));
    pst.setString(2, title);           
    pst.setString(3, content);
    pst.setString(4, pictureURL);
    //  TODO change hardcoded value
    pst.setInt(5, Integer.parseInt("9"));
    
    pst.executeUpdate(); 
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