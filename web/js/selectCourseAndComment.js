$(function () {
    $("#header").load("jsp/header.jsp");
    $("#footer").load("jsp/footer.jsp");
    $(".praise>a").click(function () {
        $(".praise>a").css("color","#00CC00");
        var c_id=$("#c_id").val();
        $.post("updateCoursePraise/"+c_id,function (data) {
            if(data){
                var test3=$("#praise").text();
                test3=parseInt(test3)+1;
                $("#praise").text(test3);
            }
            else {
                $(".praise a").attr("title","已赞");
            }
        });
    });
    $(".comment").click(function () {
        var comment=$(".textarea").val();
        var cid=$("#c_id").val();

        $.post("insertComment",{"c_id":cid,comment_content:comment},function (data) {
            $(".all-discussion").append(`
             <div class="user_info">
                    <div class="user">
                        <span class="u_name">${data.u_reviewer}</span>
                        <span class="time">${data.comment_date}</span>
                    </div>
                    <div class="content">${data.comment_content}</div>
                </div>
            `)
        });
    });
});
