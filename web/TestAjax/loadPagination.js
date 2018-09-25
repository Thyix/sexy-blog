$(document).ready(function() {
        $('button').click(function() {
            $.ajax({
                type: "post",
                url: "loadPagination.jsp",
                success: function(response) {
                    var str = '<nav aria-label="Page navigation example">' +
                                '<ul class="pagination justify-content-center">' +
                                  '<li class="page-item">' +
                                    '<a class="page-link" href="#" tabindex="-1">Previous</a>' +
                                  '</li>';
                                               
                     for(var i = 0; i < response.count_post; i++) {
                        str += '<li class="page-item"><a class="page-link" href="#">' + i + '</a></li>' 
                     }
                     
                     str += '<li class="page-item">' +
                                    '<a class="page-link" href="#">Next</a>' +
                                  '</li>' +
                                '</ul>' +
                             '</nav>';  
                     
                     //$("#pagination").html(response.count_post);    
                     $("#pagination").html(str);    
                }
            });     
        });
});