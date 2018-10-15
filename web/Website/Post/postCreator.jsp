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
    String query = "INSERT INTO post (date_post, title_post, content_post, pictureURL_post, id_tag, id_user) VALUES(?, ?, ?, ?, ?, ?)";
    pst = connection.prepareStatement(query, 1005, 1008);
    pst.clearParameters();
    
    // TODO id_post auto-increment
    pst.setDate(1, convertDate(date));
    pst.setString(2, title);           
    pst.setString(3, content);
    pst.setString(4, pictureURL);
    pst.setInt(5, Integer.parseInt(tag));
    String userID = findUserID();
    pst.setString(6, userID);
    
    pst.executeUpdate(); 

    pst.close();
    connection.close();
    // change for last url
    response.sendRedirect(request.getHeader("Referer"));
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

    public String findUserID() {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        String query = "SELECT id_user FROM user WHERE connected = TRUE";
        try {
            pst = conn.prepareCall(query);
            pst.clearParameters();
            rs = pst.executeQuery();
            if (rs.next()) {
                return rs.getString(1);
            } else {
                return "";
            }
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return "";
        }
    }

    public boolean isConnected() {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        String query = "SELECT * FROM user WHERE connected = TRUE";
        try {
            pst = conn.prepareCall(query);
            pst.clearParameters();
            rs = pst.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return false;
        }
    }

    public Connection connectToBD() {
        Connection conn = null; 
        try {
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           conn = DriverManager.getConnection(
                "jdbc:mysql://localhost/sexy-blog?verifyServerCertificate=false&useSSL=false&serverTimezone=UTC" + 
                    "&user=" +
                    "root" + 
                    "&password=" +
                    "");
            return conn;
        } catch (Exception e) {
            return null;
        }
    }
%>