
$(document).ready(function() {  
    $.post(
        "Tag/tagLoader.jsp",
        function(data) { 
            for(var i = 0; i < data.length; i++) {
                var tag = data[i].name_tag;
                var id = data[i].id_tag;
                $("#tag_category").append("<a class=\"p-2 text-muted tag\" id=\"" + id +"\" onclick=\"ajaxCategory(this)\" href=\"#\">" + tag + "</a>");
                $("#tag_post").append("<option value=\"" + id +"\">" + tag + "</option>");
            }          
        }
    );      
});

