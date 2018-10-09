$(document).ready(function() {
    var url_string = window.location.href;
    var url = new URL(url_string);
    var id = url.searchParams.get("categoryId");
    
    postHandler(0, 4, id);       
});


