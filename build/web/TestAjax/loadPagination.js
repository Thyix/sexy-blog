$(document).ready(function() {
            $.ajax({
                type: "post",
                url: "loadPagination.jsp",
                success: function(response) {
                    var str = '<nav aria-label="Page navigation example">' +
                                '<ul class="pagination justify-content-center">' +
                                  '<li class="page-item">' +
                                    '<a class="page-link" href="?page=previous" tabindex="-1">Previous</a>' +
                                  '</li>';
                                                                               
                     var nbPage = Math.ceil(response.count_post / 4); // 4 posts per page 
                     if (response.count_post < 4)
                         nbPage = 1;
                     
                     for(var i = 0; i < nbPage; i++) {
                        str += '<li class="page-item"><a class="page-link" href="?page=' + i + '">' + i + '</a></li>' 
                        //str += '<li class="page-item"><a class="page-link" href="#" onclick="alert(\'pagination()\');">' + i + '</a></li>' 
                     }
                     
                     str += '<li class="page-item">' +
                                    '<a class="page-link" href="?page=next">Next</a>' +
                                  '</li>' +
                                '</ul>' +
                             '</nav>';  
                     
                     $("#pagination").html(str);    
                }
            });        
});