$(document).ready(function() {
        $('button').click(function() {
            $.ajax({
                type: "post",
                url: "loadPosts.jsp",
                data: "page=1",
                success: function(response) {
                    var str = '<div class="row mb-2">' +
                                   '<div class="col-md-6">' +
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
                                       '<img class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Card image cap">' +
                                     '</div>' +
                                '</div>';
                    
                    for(var i = 0; i < response.length; i++){
                        var res = str.replace("title_post", response[i].title_post);
                        res = res.replace("date_post", response[i].date_post);
                        res = res.replace("content_post", response[i].content_post);
                        $(res).appendTo("#posts"); 
                    }
                }
            });     
        });
});

