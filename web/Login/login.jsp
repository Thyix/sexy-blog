<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Blog Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="LoginValidation.jsp">
    <link href="blog.css" rel="stylesheet">
  </head>
  
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>
<%@page import="java.text.SimpleDateFormat"%>

<%          
    Connection connection;
    PreparedStatement pst;
    ResultSet rs;
    connection  = connectToBD();
%>
<%
    String signupName = request.getParameter("signupName");
    //Connection conn = connectToBD();
    if (signupName != null) {
        String signupEmail = request.getParameter("signupEmail");
        String signupPassword = request.getParameter("signupPassword");
        String signupUsername = request.getParameter("signupName");
        boolean test = SignIn(signupUsername, signupPassword, signupEmail);
        int untest = 1;
    }
    //String query = String.format("SELECT * FROM post LIMIT %s, %s", firstPostIndex, postPerPage);
    //String query = "TESTQUERY";
    
    //pst = connection.prepareCall(query);
   // rs = pst.executeQuery();
%>
<%
    //https://docs.oracle.com/javaee/7/api/javax/json/JsonObject.html
    //JSONArray array = new JSONArray();
    //while (rs.next()) {        
        //JSONObject element = new JSONObject();
        //element.put("id_user", rs.getString("id_user"));
        //element.put("username_user", rs.getString("username_user"));
        //element.put("password_user", rs.getString("password_user"));
        //element.put("email_user", rs.getString("email_user"));
       // element.put("connected_user", rs.getString("connected_user"));
       // array.put(element);
    //}
      
    //out.print(array);
   // out.flush();
%>

  <body>

    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a class="text-muted" href="#">Subscribe</a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Large</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
              <div>
              <button id="inscription" type="button" style="margin-right: 15px" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" data-placement="bottom" title="Nouveau compte">S'inscrire</button>
              <ul id="signup-nav" class="dropdown-menu">
                    <li><form id="register" class="registerForm" role="form" method="post" action="login.jsp" accept-charset="UTF-8" id="signup-nav">
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <label class="sr-only" for="exampleInputName">Nom complet</label>
                                <input type="signupName" name="signupName" class="form-control" id="signupName" placeholder="Nom complet" required>
                            </div>
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <label class="sr-only" for="exampleInputEmail2"> Votre e-mail</label>
                                <input type="signupEmail" name="signupEmail" class="form-control" id="signupEmail" placeholder="Adresse Mail" required>
                            </div>
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <label class="sr-only" for="exampleInputPassword2">Nouveau mot de passe</label>
                                <input type="signupPassword" name="signupPassword" class="form-control" id="signupPassword" placeholder="Mot de passe" required>
                            </div>
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <button type="submit" class="btn btn-primary btn-block">S'inscrire</button>
                            </div>
                            <div class="checkbox">
                                <label>
                                <input style="margin-left: 35px;" type="checkbox"> Rester connecté
                                </label>
                            </div>
                        </form>
                </ul>
              </div>
              <div>
              <button id="connection" type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" data-placement="bottom" title="Compte existant">Se connecter</button>
                <ul id="login-dp" class="dropdown-menu">
                    <li><form id="login" class="loginForm" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <label class="sr-only" for="exampleInputEmail2">E-mail</label>
                                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Adresse Mail" required>
                            </div>
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <label class="sr-only" for="exampleInputPassword2">Mot de passe</label>
                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Mot de passe" required>
                                <div class="help-block text-right">
                                    <a href="" style="margin-right: 25px;">Mot de passe oublié ?</a></div>
                            </div>
                            <div class="form-group" style="margin-right:5px; margin-left:5px;">
                                <button type="submit" class="btn btn-primary btn-block">Se connecter</button>
                            </div>
                            <div class="checkbox">
                                <label>
                                <input style="margin-left: 35px;" type="checkbox"> Rester connecté
                                </label>
                            </div>
                        </form>
                </ul>
              </div>
      </header>

      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 text-muted" href="#">World</a>
          <a class="p-2 text-muted" href="#">U.S.</a>
          <a class="p-2 text-muted" href="#">Technology</a>
          <a class="p-2 text-muted" href="#">Design</a>
          <a class="p-2 text-muted" href="#">Culture</a>
          <a class="p-2 text-muted" href="#">Business</a>
          <a class="p-2 text-muted" href="#">Politics</a>
          <a class="p-2 text-muted" href="#">Opinion</a>
          <a class="p-2 text-muted" href="#">Science</a>
          <a class="p-2 text-muted" href="#">Health</a>
          <a class="p-2 text-muted" href="#">Style</a>
          <a class="p-2 text-muted" href="#">Travel</a>
        </nav>
      </div>

      <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
          <h1 class="display-4 font-italic">Title of a longer featured blog post</h1>
          <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what's most interesting in this post's contents.</p>
          <p class="lead mb-0"><a href="post_test.html" class="text-white font-weight-bold">Continue reading...</a></p>
        </div>
      </div>

      <div class="row mb-2">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary">World</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">Featured post</a>
              </h3>
              <div class="mb-1 text-muted">Nov 12</div>
              <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
              <a href="#">Continue reading</a>
            </div>
            <img class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Card image cap">
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-success">Design</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">Post title</a>
              </h3>
              <div class="mb-1 text-muted">Nov 11</div>
              <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
              <a href="#">Continue reading</a>
            </div>
            <img class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Card image cap">
          </div>
        </div>
      </div>
        

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1">Previous</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
    </nav>
    
    <footer class="blog-footer">
      <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>
            
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

    public boolean SignIn(String username, String password, String email) {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        int randomID = (int)Math.floor((Math.random() * 1000) + 1); ;
        String query = "INSERT INTO user (id_user, username_user, password_user, email_user) VALUES (?, ?, ?, ?)";
        try {
            pst = conn.prepareStatement(query, 1005, 1008);
            pst.clearParameters();
            pst.setInt(1, randomID);
            pst.setString(2, username);           
            pst.setString(3, password);
            pst.setString(4, email);
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.print("Erreur lors de l'enregistrement : " + e);
        }
        return true;
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
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="JS/jquery-slim.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>   
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="JS/holder.min.js"></script>
    <script src="JS/popover.js" />
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
    
  </body>
</html>
