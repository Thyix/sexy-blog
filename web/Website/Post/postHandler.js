function postHandler(pageNumber, postPerPage, tag) {     
    $.post(
        "Post/postLoader.jsp",
        {pageNumber: pageNumber, postPerPage: postPerPage, categoryId: tag},
        function(data) { 
            $("#posts").html(""); // remove current posts
            
            var block =      '<div class="col-md-6">' +
                                     '<div class="card flex-md-row mb-4 shadow-sm h-md-250">' +
                                       '<div class="card-body d-flex flex-column align-items-start">' +
                                         '<strong class="d-inline-block mb-2 text-primary">tag_post</strong>' +
                                         '<h3 class="mb-0">' +
                                           '<a class="text-dark" href="#">title_post</a>' +
                                         '</h3>' +
                                         '<div class="mb-1 text-muted">date_post</div>' +
                                         '<p class="card-text mb-auto">content_post</p>' +
                                         '<a href="#">Continue reading</a>' +
                                       '</div>' +
                                       '<img class="card-img-right flex-auto d-none d-lg-block" style="width:200px;height:200px" src="pictureURL_post" alt="Card image cap">' +                                     
                                     '</div>' + 
                                '</div>';   
                       
                var row;  // the row will contains two block
                for(var i = 0; i < postPerPage; i++) {
                        if (i % 2 === 0) { 
                            row = '<div class="row mb-2">';
                        }
                        
                        var res = block.replace("title_post", data[i].title_post);
                        res = res.replace("date_post", data[i].date_post);
                        res = res.replace("content_post", data[i].content_post);
                        res = res.replace("pictureURL_post", data[i].pictureURL_post);
                        
                        row += res;
                        
                        if (i % 2 === 1 || i === data.length - 1) { // if number of post into the row is even or is the last one and the total is odd 
                            row += '</div>';                            
                            $(row).appendTo("#posts");     
                            row = "";
                       }                                                       
                    }    
        }
    );
}


