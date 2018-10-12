<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>
<%@page import="java.text.SimpleDateFormat"%>
<%          
    Connection connection;
    PreparedStatement pst;
    ResultSet rs;  

    // Load the JDBC driver      
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection conn = connectToBD();
%>
<%
    pst = conn.prepareCall("SELECT * FROM post");
    rs = pst.executeQuery();
%>
<%
    //https://docs.oracle.com/javaee/7/api/javax/json/JsonObject.html
    JSONArray array = new JSONArray();
    while (rs.next()) {  
        JSONObject element = new JSONObject();
        element.put("id_post", rs.getString("id_post"));
        element.put("date_post", rs.getString("date_post"));
        element.put("title_post", rs.getString("title_post"));
        element.put("content_post", rs.getString("content_post"));
        element.put("pictureURL_post", rs.getString("pictureURL_post"));
        array.put(element);
    }

    out.print(array.toString());
    out.flush();
%>

<%!
    ResultSet rs = null;
    public Connection connectToBD() {
        Connection conn = null; 
        try {
           Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
           conn = DriverManager.getConnection(
                "jdbc:mysql://localhost/sexy-blog?verifyServerCertificate=false&useSSL=false&serverTimezone=UTC" + 
                    "&user=" +
                    "root" + 
                    "&password=" +
                    "");
            return conn;
        } catch (Exception e) {
            System.out.print("La connexion n'a pas pu être établie !");
            return null;
        }
    }

    public java.sql.Date convertDate(String receivedDate) {
        SimpleDateFormat simpleDate = new SimpleDateFormat("MM-dd-yyyy");
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
