function ajaxPost(obj) {         
    var id = getParameterUrl("categoryId");
    postHandler(obj.id, 5, id);   
}

function ajaxCategory(obj) {
   window.location.href = "blog.jsp?categoryId="+obj.id;  
}



