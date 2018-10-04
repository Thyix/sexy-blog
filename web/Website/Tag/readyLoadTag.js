$(document).ready(function() {     
    $.post(
        "Tag/tagLoader.jsp",
        function(data) { 
            for(var i = 0; i < data.length; i++) {
                var tag = data[i].name_tag;
                $("#tag_category_tag").append("<a class=\"p-2 text-muted\" href=\"#\">" + tag + "</a>");
                $("#tag_post").append("<option>" + tag + "</option>");
            }          
        }
    );      
});

