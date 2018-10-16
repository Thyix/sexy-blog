function paginationHandler(id){
    $.post({
                url: "Pagination/paginationLoader.jsp",
                data: {categoryId: id}, 
                success: function(response) {
                    var str = '<nav aria-label="Page navigation example">' +
                                '<ul class="pagination justify-content-center">';
                                         
                    var numberPost = parseInt(response.count_post);
                   
                    if(numberPost < 5) { 
                        numberPost = 1;
                    } else { 
                        numberPost = Math.ceil(numberPost/5);
                    }

                     for(var i = 0; i < numberPost; i++) {
                        str += '<li class="page-item"><a class="page-link" id="' + i + '" onclick="ajaxPost(this)" href="#">' + i + '</a></li>' 
                     }
                     
                     str +=     '</ul>' +
                             '</nav>';  
                     
                     $("#pagination").html(str);    
                }
            });  
}
