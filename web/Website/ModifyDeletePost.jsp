<%-- 
    Document   : posts
    Created on : 2018-09-18, 09:38:42
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../favicon.ico">

    <title>JSP Page</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="../CSS/blog.css" rel="../stylesheet">
    <link href="../CSS/bootstrap-datepicker.css" rel="stylesheet">
    <link rel="stylesheet" href="fastselect.min.css">
    <link rel="stylesheet" href="ModifyDeletePost.css">
       
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
      
    <script src="../JS/fonctionUtilitaire.js" type="text/javascript"></script>
     
    <script src="fastselect.standalone.js"></script> 
     
    <script src="Pagination/paginationHandler.js" type="text/javascript"></script>    
    <script src="Pagination/readyLoadPagination.js" type="text/javascript"></script> 
    <script src="Tag/readyLoadTag.js" type="text/javascript"></script> 
    
    <script src="Post/postHandler.js" type="text/javascript"></script>
    <script src="Post/ajaxLoadPost.js" type="text/javascript"></script>    
    <script src="Post/readyLoadPost.js" type="text/javascript"></script> 
    <script src="Post/openPost.js" type="text/javascript"></script> 
  </head>   
  
    <body>
         <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            
          </div>
         <div class="col-4 text-center">
            <a class="d-inline-block mb-2 text-success" style="font-size:20px;" href="blog.jsp">Sexy-blog</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">                                  
        </div>
      </header>

      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between" id="tag_category" id="tag_category">
            
        </nav>
      </div>
             
            <div id="table_post">
                <table id="Posts">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Title</th>
                    <th scope="col">Date</th>
                    <th scope="col">Tag</th>
                    <th scope="col">Mod/Del</th>
                  </tr>
                </thead>
                <tbody id="body_post">
                  
                </tbody>
              </table>
            </div>
  
     <footer class="blog-footer">  

    </footer>
        <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster --> 
    <script>window.jQuery || document.write('<script src="JS/jquery-slim.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>   
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="../JS/bootstrap-datepicker.js" type="text/javascript"></script>
    <script>
        $('#date_post').datepicker({});
    </script>
    <script src="../JS/holder.min.js"></script>
    <script src="../JS/popover.js" />
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
       
    <!-- load existing post from author -->
     <script>
        $(document).ready(function() {
               refreshTable();
        });    
    </script>
    
    <script>
        function modifyPost(obj) { 
            window.location.href = "updatePost.jsp?postId="+obj.id;                  
        }
    </script>
    <script>
        function deletePost(obj) {
            // TODO appeler la bd pour supprimer le post avec l'id spécifique
            $.post(
                    "Post/deletePost.jsp",
                    {idPost: obj.id},
                    function(data) {
                        refreshTable();           
                    }
                    );          
        }
    </script>   
    <script>
        function refreshTable() {
            $("#body_post").html("");
            
            var postTemplate =  '<tr>' +
                                    '<th scope="row">id_post</th>' +
                                    '<td>title_post</td>' +
                                    '<td>date_post</td>' +
                                    '<td>tag_post</td>' +
                                    '<td>' + 
                                        '<a id="id_post" onclick="modifyPost(this)" style="padding-right: 5px;">' +
                                            '<span class="glyphicon glyphicon-pencil"></span>' +
                                        '</a>' +
                                        '<a id="id_post" onclick="deletePost(this)">' +
                                            '<span class="glyphicon glyphicon-trash"></span>' +
                                        '</a>' +                                        
                                    '</td>' +                                     
                                  '</tr>';
             
             
            $.post(
                    "Post/postLoaderAll.jsp",
                    function(data) {
                        //  TODO appeler la bd pour loader tous les posts de l'utilisateur
                        for (var i = 0; i < data.length; i++){ 

                           //  changer toutes les occurences de id_post avec le flag 'g'
                           example = postTemplate.replace(/id_post/g, data[i].id_post);                
                           example = example.replace("title_post", data[i].title_post);                         
                           example = example.replace("date_post", data[i].date_post);
                           example = example.replace("tag_post", data[i].name_tag);

                           $("#body_post").append(example);             
                       } 
                    }
                    );                         
        }
    </script>
    </body>
</html>
