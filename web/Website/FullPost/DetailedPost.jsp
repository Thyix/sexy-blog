<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>Blog Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="blog.css" rel="stylesheet"> 
    
    <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.logging.Logger" %>
<%@ page import = "java.util.logging.Level" %>
	
	<style>
	
	</style>
  </head>

  <body>
    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <% boolean connected = isConnected();
            if (connected) {%>
                <a class="text-muted" href="../ModifyDeletePost.jsp">Mes publications</a>
            <%} else {%>
                <a style="top:0;" class="text-muted">Programmation web 2018</a>
           <%}%>
          </div>
          <div class="col-4 text-center" style="top:10px;">
            <h2 class="d-inline-block mb-2 text-success">SEXY BLOG</h2>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center" style="top:5px;">
              <%
              if (!connected) {%>
              <div>
              <button id="inscription" type="button" style="margin-right: 15px" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown" data-placement="bottom" title="Nouveau compte">S'inscrire</button>
              <ul id="signup-nav" class="dropdown-menu">
                    <li><form id="register" class="registerForm" role="form" method="post" action="Login/SignUp.jsp" accept-charset="UTF-8" id="signup-nav">
                            <div class="form-group" style="margin-right:10px; margin-left:10px;">
                                <label class="sr-only" for="exampleInputName">Nom complet</label>
                                <input type="signupName" name="signupName" class="form-control" id="signupName" placeholder="Nom complet" required>
                            </div>
                            <div class="form-group" style="margin-right:10px; margin-left:10px;">
                                <label class="sr-only" for="exampleInputEmail"> Votre e-mail</label>
                                <input type="email" name="signupEmail" class="form-control" id="signupEmail" placeholder="Adresse Mail" required>
                            </div>
                            <div class="form-group" style="margin-right:10px; margin-left:10px;">
                                <label class="sr-only" for="exampleInputPassword">Nouveau mot de passe</label>
                                <input type="password" name="signupPassword" class="form-control" id="signupPassword" placeholder="Mot de passe" required>
                            </div>
                            <div class="form-group" style="margin-right:15px; margin-left:15px;">
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
                    <li><form id="login" class="loginForm" role="form" method="post" action="Login/SignIn.jsp" accept-charset="UTF-8" id="login-nav">
                            <div class="form-group" style="margin-right:10px; margin-left:10px;">
                                <label class="sr-only" for="exampleInputName2">E-mail</label>
                                <input type="signinName" name="signinName" class="form-control" id="exampleInputEmail2" placeholder="Adresse Mail" required>
                            </div>
                            <div class="form-group" style="margin-right:10px; margin-left:10px;">
                                <label class="sr-only" for="exampleInputPassword2">Mot de passe</label>
                                <input type="password" name="signinPassword" class="form-control" id="exampleInputPassword2" placeholder="Mot de passe" required>
                                <div class="help-block text-right" style="margin-top:5px;">
                                    <a style="margin-right: 35px;color:blue;">Mot de passe oublié ?</a></div>
                            </div>
                            <div class="form-group" style="margin-right:15px; margin-left:15px;">
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
              <%} else {
                String name = findUserName();
              %> 
                <h6 class="p-2 text-muted" style="margin-top:10px;margin-right:-10px;">Bonjour</h6>
                <strong class="p-2 text-muted" style="margin-right: 25px;"><%=name%></strong>
                        <form id="register" class="logoutForm" method="post" action="Login/Logout.jsp" accept-charset="UTF-8" id="signup-nav">
                            <button type="submit" class="btn btn-outline-secondary"  title="Compte existant">Se Déconnecter</button>
                        </form>
                <%}%>
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

      <div class="jumbotron p-3 p-md-5 text-white rounded bg-light text-center">
         <div class="container">
        <h1 class="jumbotron-heading text-dark">E-COMMERCE CATEGORY</h1>
        <p class="lead text-muted mb-0">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte...</p>
    </div>
      </div>

    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <h3 class="pb-3 mb-4  border-bottom">
            From the Firehose
          </h3>

          <div class="blog-post">
            <h2 class="blog-post-title">Sample blog post</h2>
            <p class="blog-post-meta">January 1, 2014 by <a href="#">Webublogoverflow</a></p>

            <p>This blog post shows a few different types of content that's supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>
            <hr>
            <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
            <blockquote>
              <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            </blockquote>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
            <h2>Heading</h2>
            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <h3>Sub-heading</h3>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
            <pre><code>Example code block</code></pre>
            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
            <h3>Sub-heading</h3>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <ul>
              <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
              <li>Donec id elit non mi porta gravida at eget metus.</li>
              <li>Nulla vitae elit libero, a pharetra augue.</li>
            </ul>
            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
            <ol>
              <li>Vestibulum id ligula porta felis euismod semper.</li>
              <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>
              <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
            </ol>
            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>
			<div class="row">
      <p>
          <i class="fa fa-user-circle"></i> by <a href="#">Webublogoverflow</a> 
          | <i class="fa fa-comment"></i> <a href="#">7 Comments</a>
          | <i class="fa fa-share"></i> <a href="#">89 Shares</a>
          | <i class="fa fa-tags"></i> Tags : <a href="#"><span class="badge badge-info">Snipp</span></a> 
          <a href="#"><span class="badge badge-info">Bootstrap</span></a> 
          <a href="#"><span class="badge badge-info">UI</span></a> 
          <a href="#"><span class="badge badge-info">growth</span></a>
        </p>
    </div>
          </div><!-- /.blog-post -->

                  
          <nav class="blog-pagination">
            <a class="btn btn-outline-primary" href="#">Older</a>
            <a class="btn btn-outline-secondary disabled" href="#">Newer</a>
          </nav>

        </div><!-- /.blog-main -->

        <aside class="col-md-4 blog-sidebar">
          <div class="p-3 mb-3 bg-info rounded">
            <h4 class="font-normal">About</h4>
            <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>

          <div class="p-3">
            <h4 class="font-normal">Archives</h4>
            <ol class="list-unstyled mb-0">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>
          </div>

          <div class="p-3">
            <h4 class="font-normal">Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="#">GitHub</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Facebook</a></li>
            </ol>
          </div>
        </aside><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </main><!-- /.container -->

    <footer class="blog-footer">
      <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/luckmoshy">luckmoshy</a>.</p>
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
            return null;
        }
    }

    public String findUserName() {
        PreparedStatement pst; 
        ResultSet rs;
        Connection conn = connectToBD();
        String query = "SELECT username_user FROM user WHERE connected = TRUE";
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
    %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>
