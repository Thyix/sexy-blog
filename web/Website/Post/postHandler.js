function postHandler(pageNumber, postPerPage, tag) {     
    $.post(
        "Post/postLoader.jsp",
        {pageNumber: pageNumber, postPerPage: postPerPage, categoryId: tag},
        function(data) { 
            $("#posts").html(""); // remove current posts
            
            var block =      '<div class="col-md-6">' +
                                     '<div class="card flex-md-row mb-4 shadow-sm h-md-250">' +
                                       '<div class="card-body d-flex flex-column align-items-start">' +
                                         '<strong class="d-inline-block mb-2 text-primary">name_tag</strong>' +
                                         '<h3 class="mb-0">' +
                                           '<a class="text-dark" href="#">title_post</a>' +
                                         '</h3>' +
                                         '<div class="mb-1 text-muted">date_post</div>' +
                                         '<p class="card-text mb-auto">content_post</p>' +
                                         '<a id="id_post" onclick="openPost(this)" href="#">Continue reading</a>' +
                                       '</div>' +
                                       '<img class="card-img-right flex-auto d-none d-lg-block" style="width:200px;height:230px;min-width:200px;min-height:230px;max-width:200px;max-height:230px" src="pictureURL_post" alt="Card image cap">' +                                     
                                     '</div>' + 
                                '</div>';   
            
                //random color for background
                //background-color: powderblue;
                
                var bigPost = '<div class="jumbotron p-3 p-md-5 text-white rounded" style="background-image: url(pictureURL_post); background-size:cover;">' +
                                '<div class="col-md-6 px-0">' +
                                        '<h1 class="display-4 font-italic">title_post</h1>' +
                                        '<p class="lead my-3">content_post</p>' +
                                        '<p class="lead mb-0"><a id="id_post" onclick="openPost(this)" class="text-white font-weight-bold" href="#">Continue reading...</a></p>' +                                   
                              '</div>' +
                          '</div>';
                  
                
                
                bigPost = bigPost.replace("title_post", data[0].title_post); 
                // max 50 caracters of content displayed
                bigPost = bigPost.replace("content_post", TruncContent(data[0].content_post)); 
                bigPost = bigPost.replace("id_post", data[0].id_post); 
                bigPost = bigPost.replace("pictureURL_post", data[0].pictureURL_post); 
                 
                $(bigPost).appendTo("#posts");  
                 
                var row;  // the row will contains two block
                
                
                 
                for(var i = 1; i < postPerPage; i++) {
                        if (i % 2 === 1) { 
                            row = '<div class="row mb-2">';
                        }
                        
                        var res = block.replace("title_post", data[i].title_post);
                        res = res.replace("date_post", data[i].date_post);
                        // max 50 caracters of content displayed
                        res = res.replace("content_post", TruncContent(data[i].content_post));
                        res = res.replace("pictureURL_post", data[i].pictureURL_post);
                        res = res.replace("id_post", data[i].id_post);
                         res = res.replace("name_tag", data[i].name_tag);
                         
                        row += res;
                        
                        if (i % 2 === 0 || i === data.length - 1) { // if number of post into the row is even or is the last one and the total is odd 
                            row += '</div>';                            
                            $(row).appendTo("#posts");     
                            row = "";
                       }                                                       
                    }    
        }
    );
}

function TruncContent(content) {
    var contentMaxLength = 100;
    
    // add ... to content to show theres more to the article if its bigger than the max length
    var truncContent = content.substring(0, contentMaxLength);
    
    if(content.length > contentMaxLength) {
        truncContent += "...";
    }
    
    return truncContent;
}


