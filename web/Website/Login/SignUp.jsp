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
        boolean isExisting = ExistingUser(signupEmail);
        if (!isExisting) {
            boolean signingUp = SignUp(signupName, signupPassword, signupEmail);
        } else {%>
        <script>
            window.location='../blog.jsp';
            window.alert("Cet email d'utilisateur est déjà prit.");
        </script>
        <%}
    }
%>

<script>
    window.location='../blog.jsp';
</script>

<%!
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
            System.out.print("La connexion n'a pas pu être établie !");
            return null;
        }
    }

    public boolean ExistingUser(String username) {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        String query = "SELECT * FROM user WHERE email_user = ?";
        try {
            pst = conn.prepareCall(query);
            pst.clearParameters();
            pst.setString(1, username);
            rs = pst.executeQuery();
            rs.next();
            String id = rs.getString(1);
            if (id!=null) {
                return true;
            }
            return false;
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return false;
        }
    }


    public boolean SignUp(String username, String password, String email) {
        PreparedStatement pst; 
        Connection conn = connectToBD();
        String query = "INSERT INTO user (username_user, password_user, email_user, connected) VALUES (?, ?, ?, ?)";
        try {
            pst = conn.prepareStatement(query, 1005, 1008);
            pst.clearParameters();
            pst.setString(1, username);           
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setBoolean(4, true);
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
            return false;
        }
        return true;
    }

%>
