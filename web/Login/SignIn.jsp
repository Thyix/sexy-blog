<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>
<%@page import="java.text.SimpleDateFormat"%>

<%
    String signInName = request.getParameter("signinName");
    //Connection conn = connectToBD();
    if (signInName != null) {
        String signInPassword = request.getParameter("signinPassword");
        String userID = ExistingUser(signInName, signInPassword);
        if (userID == "") {%>
        <script>
            window.location='login.jsp';
            window.alert("Les identifiants sont incorrects");
        </script>
        <%} else {
            boolean isSignedIn = SignIn(userID);
        }
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
            System.out.print("La connexion n'a pas pu être établie !");
            return null;
        }
    }

    public String ExistingUser(String username, String password) {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        String query = "SELECT id_user FROM user WHERE email_user = ? AND password_user = ?";
        try {
            pst = conn.prepareCall(query);
            pst.clearParameters();
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            rs.next();
            String id = rs.getString(1);
            if (id!=null) {
                return rs.getString(1);
            }
            return "";
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return "";
        }
    }

    public boolean SignIn(String ID) {
        PreparedStatement pst; 
        Connection conn = connectToBD();
        String query = "UPDATE user SET connected=1 WHERE id_user=?";
        try {
            pst = conn.prepareStatement(query, 1005, 1008);
            pst.clearParameters();
            pst.setString(1, ID);
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return false;
        }
        return true;
    }

%>
