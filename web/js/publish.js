var editor;
$(function () {
    $("#header").load("jsp/header.jsp");
    $("#footer").load("jsp/footer.jsp");
    editor=$("textarea");
    editor.froalaEditor({
        theme: "gray",
        language:"zh_cn",
        toolbarButtons: ['bold', 'italic', 'underline','fontSize', 'color','align','insertImage', 'insertFile', 'insertTable','|', 'emoticons'],
        placeholderText: '添加步骤',
        imageUploadURL: "/upload",
        heightMax: 300,
        heightMin: 200,
    });
    /*通过Ajax将数据传递给addCourse*/
  $("#publish").click(function () {
        var name=$("#c_name").val();
        var type=$("#c_type").val();
        var operation=$("#c_operation").val();
        var img=$('.froala_editor img:eq(0)').attr("src");
        console.log(img);
        $.post("addCourse", {c_firstImage:img,c_name:name,c_type:type,c_operation:operation},function (data) {
            if (data){
                window.location.href="../jsp/selectCurrentCourse.jsp";
                clearHtml();
                $("#c_name").val("");
                $("#c_type").val("");
            }
            else{
                alert("插入失败");
            }
        } );
    });
});

function  clearHtml() {
    /*将编辑器的值清空*/
    editor.froalaEditor('html.set', '');

    }
function checkLength(){
    $(".menu_name>span").text("");
    var c_name=$("#c_name").val();
    if(c_name.length>10&&c_name.length<15){
        $(".menu_name>span").text("正确的菜谱名");
        return true;
    }
    else{
        $(".menu_name>span").text("长度为6-16个字符");
        return false;
    }
}