<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>
<%@page import="java.text.SimpleDateFormat"%>

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

    public boolean SignIn(String username, String password, String email) {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        int randomID = (int)Math.random() % 3;
        String query = String.format("INSERT INTO user (id_user, username_user, password_user, email_user) VALUES (%s, %s, %s, %s)",
            randomID, username, password, email);
        try {
            pst = conn.prepareCall(query);
            rs = pst.executeQuery();
        } catch (Exception e) {
            alert(e);
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