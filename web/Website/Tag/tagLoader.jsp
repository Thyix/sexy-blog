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
<<<<<<< HEAD:web/TestAjax/loadPosts.jsp
<%
    // TO READ https://hackernoon.com/guys-were-doing-pagination-wrong-f6c18a91b232
    int nbPage = Integer.parseInt(request.getParameter("page")) * 4;
    pst = connection.prepareCall("SELECT * FROM post LIMIT " + String.valueOf(nbPage) + ",4");
=======
<%  
    String query = String.format("SELECT * FROM tag");
    pst = connection.prepareCall(query);
>>>>>>> Pascal:web/Website/Tag/tagLoader.jsp
    rs = pst.executeQuery();
%>
<%
    //https://docs.oracle.com/javaee/7/api/javax/json/JsonObject.html
    JSONArray array = new JSONArray();
    while (rs.next()) {        
        JSONObject element = new JSONObject();
        element.put("id_tag", rs.getString("id_tag"));
        element.put("name_tag", rs.getString("name_tag"));       
        array.put(element);
    }
<<<<<<< HEAD:web/TestAjax/loadPosts.jsp
      
=======

    rs.close();
    pst.close();
    connection.close();
    
>>>>>>> Pascal:web/Website/Tag/tagLoader.jsp
    out.print(array);
    out.flush();
%>
