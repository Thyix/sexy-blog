<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>
<%@page import="java.text.SimpleDateFormat"%>

<%
    String signupName = request.getParameter("signupName");
    //Connection conn = connectToBD();
    if (signupName != null) {
        String signupEmail = request.getParameter("signupEmail");
        String signupPassword = request.getParameter("signupPassword");
        String signupUsername = request.getParameter("signupName");
        boolean signingIn = SignIn(signupUsername, signupPassword, signupEmail);
    }
%>

<script>
    window.location='login.jsp';
</script>

<%!
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
            System.out.print("La connexion n'a pas pu �tre �tablie !");
            return null;
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

    public boolean SignIn(String username, String password, String email) {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        int randomID = (int)Math.floor((Math.random() * 1000) + 1); ;
        String query = "INSERT INTO user (id_user, username_user, password_user, email_user, connected) VALUES (?, ?, ?, ?, ?)";
        try {
            pst = conn.prepareStatement(query, 1005, 1008);
            pst.clearParameters();
            pst.setInt(1, randomID);
            pst.setString(2, username);           
            pst.setString(3, password);
            pst.setString(4, email);
            pst.setBoolean(5, true);
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return false;
        }
        return true;
    }

%>
