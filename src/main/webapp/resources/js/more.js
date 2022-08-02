$(document).ready(function(){
    $("wrap>li").hide();
    $("wrap>li").slice(0,5).show()
})

function more(){    
    $("#wrap>li").slice(5,10).show()
}