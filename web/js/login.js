$(function () {
    $("#footer").load("jsp/footer.jsp");
    $("#login").click(function () {
        var userName=$("#username").val();
        var passWord=$("#password").val();
        $.post("login",{username:userName,password:passWord},function (data) {
           if (data){
               window.location.href="index.jsp";
           }
           else {
               $("#result").text("用户名或者密码错误");

           }
        });
    });
});
