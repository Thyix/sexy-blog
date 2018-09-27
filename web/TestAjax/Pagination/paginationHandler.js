function paginationHandler(){
    $.post({
                url: "Pagination/paginationLoader.jsp",
                success: function(response) {
                    var str = '<nav aria-label="Page navigation example">' +
                                '<ul class="pagination justify-content-center">' +
                                  '<li class="page-item">' +
                                    '<a class="page-link" id="previous" onclick="ajaxPost(this)">Previous</a>' +
                                  '</li>';
                                         
                    var numberPost = parseInt(response.count_post);
                   
                    if(numberPost < 4) { 
                        numberPost = 1;
                    } else { 
                        numberPost = Math.ceil(numberPost/4);
                    }

                     for(var i = 0; i < numberPost; i++) {
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



}