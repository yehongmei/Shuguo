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
        $.post("insertComment",{"course.c_id":cid,comment_content:comment},function (data) {
            $(".user>.u_name").append(data.user.username);
            $(".user>.time").append(data.comment_date);
            $(".user_info>.content").append(data.comment_content);
        });

    });
});
