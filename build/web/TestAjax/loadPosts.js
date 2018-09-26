$(document).ready(function() {
    
            var loc = window.location.href;                
            var url = new URL(loc);
            var page = url.searchParams.get("page");
                    
            if(page === "next") {
                        
            } else if (page === "previous") {
                        
            } else if (page === "") {
                        
            } else { 
                     
            }
                    
            $.ajax({
                type: "post",
                url: "loadPosts.jsp",
                data: "page=" + page,
                dataType: "json",
                success: function(response) {
                                  
                    var str;
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
                                       '<img class="card-img-right flex-auto d-none d-lg-block" style="width:200px;height:200px" src="../arch.png" alt="Card image cap">' +                                     
                                     '</div>' + 
                                 '</div>';                          
                    
                    // only load 4 posts - not clean for the moment because we fetch everything
                    for(var i = 0; i < 4; i++) {
                        if (i % 2 === 0) { 
                            str = '<div class="row mb-2">';
                        }
                        
                        var res = block.replace("title_post", response[i].title_post);
                        res = block.replace("date_post", response[i].date_post);
                        res = block.replace("content_post", response[i].content_post);
                        
                        str += res;
                        
                        if (i % 2 === 1 || i === response.length - 1) { // if total posts not pair 
                            str += '</div>';                            
                            $(str).appendTo("#posts");     
                            str = "";
                       }                                                       
                    }
                }
            });     
});

