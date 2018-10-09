function ajaxPost(obj) {         
    var url_string = window.location.href;
    var url = new URL(url_string);
    var id = url.searchParams.get("categoryId");
    
    postHandler(obj.id, 4, id);   
}

function ajaxCategory(obj) {
   window.location.href = "blog.jsp?categoryId="+obj.id;  
}



