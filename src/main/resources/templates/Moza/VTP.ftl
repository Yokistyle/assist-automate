<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>自动化工具平台</title>
    <style type="text/css"></style>
    <link rel="stylesheet" href="../../static/layui/css/admin.css" media="all">
    <link rel="stylesheet" href="../../static/layui/css/layui.css" media="all">
</head>
<body>
<div class="layui-fluid">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px; font-size: 14px;">
        <legend>VTP还款</legend>
    </fieldset>
    <div class="layui-card" style="width: 1200px">
        <div class="layui-card-body">
            <form class="layui-form" action="" id="VTP">

                <div class="layui-form-item">
                    <blockquote class="layui-elem-quote">还款码</blockquote>
                    <div class="layui-input-inline" style="width: 300px">
                        <input type="text" name="Phone" lay-verify="title"  class="layui-input" placeholder="Eg：MOZADONG1815072593">
                    </div>
                </div>


                <div class="layui-form-item">
                    <button type="button" class="layui-btn" style="margin-left: 20px" onclick="return submitForm()">提交</button>
                </div>
            </form>
        </div>
    </div>
</div>


<script src="../../static/layui/layui.all.js" charset="utf-8"></script>
<script src="../../static/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    var layer = layui.layer;
    function submitForm() {
        var commentInfoForm = $('#Register');//表单提交
        $.ajax({
            url: "/MozaDong/register",
            type: "POST",
            data: commentInfoForm.serialize(),
            dataType:"json",
            success: function (resultMap) {
                if(resultMap.code===0){
                    layer.alert("账号不能为空，请重试！")
                }else if(resultMap.code===1){
                    layer.alert("账号重复，请修改账号！")
                }else if(resultMap.code===2){
                    var html = '<table class="layui-table"><thead><tr><td>注册成功，账号为：+</td></tr>';
                    for (var i=0;i<resultMap.data.length;i++){i
//                        if (i<10){
                        html += '<tr><td>'+ resultMap.data[i] +'</td></tr>'
//                        }else {break;}
                    }
                    html += '</thead></table>';
                    layer.open({
                        type: 1
                        ,offset: 'auto'
                        ,id: 'layerDemo'
                        ,area: '300px'
                        ,content: html
                        ,title: false
                        ,btnAlign: 'c' //按钮居中
                        ,shade: 0 //不显示遮罩
                        ,yes: function(){
                            layer.closeAll();
                        }
                    });
                }
            },
            error: function (data,type,err) {
                console.log(("ajax错误类型："+type+err));
            }
        });
    }

</script>
</body>
</html>
