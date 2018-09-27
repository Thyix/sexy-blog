$(document).ready(function() {
            $.ajax({
                type: "post",
                url: "loadPagination.jsp",
                success: function(response) {
                    var str = '<nav aria-label="Page navigation example">' +
                                '<ul class="pagination justify-content-center">' +
                                  '<li class="page-item">' +
                                    '<a class="page-link" id="previous" onclick="ajaxPost(this)">Previous</a>' +
                                  '</li>';
                                         
                     var nbPage = response.count_post % 4; // 4 posts per page
                     for(var i = 0; i <= nbPage; i++) {
                        str += '<li class="page-item"><a class="page-link" id="' + i + '" onclick="ajaxPost(this)">' + i + '</a></li>' 
                     }
                     
                     str += '<li class="page-item">' +
                                    '<a class="page-link" id="next" onclick="ajaxPost(this)">Next</a>' +
                                  '</li>' +
                                '</ul>' +
                             '</nav>';  
                     
                     $("#pagination").html(str);    
                }
            });        
});