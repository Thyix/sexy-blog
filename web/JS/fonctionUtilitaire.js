function getParameterUrl(param) {
    var url_string = window.location.href;
    var url = new URL(url_string);
    var id = url.searchParams.get(param);   
    
    return id;
}


