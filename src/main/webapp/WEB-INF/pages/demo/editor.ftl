<html>
<head>
    <meta charset="UTF-8">
    <title>markdown editor demo</title>
<#include "/common/common-css.ftl" />
    <link rel="stylesheet" href="http://lab.lepture.com/editor/editor.css" />
    <script type="text/javascript" src="http://lab.lepture.com/editor/editor.js"></script>
    <script type="text/javascript" src="http://lab.lepture.com/editor/marked.js"></script>
</head>
<body>
<div>
<#include "/layout/head.ftl" />
    <div class="container">
        <textarea></textarea>
        <button class="btn-primary" id="save-content-button">保存</button>
    </div>
</div>

<#include "/layout/foot.ftl" />
<#include "/common/common-js.ftl" />
<script>
    var editor = new Editor();
    editor.render();
    $('#save-content-button').on('click', function(){
        var content = editor.codemirror.getValue();
        $.post("/demo/editorsumbitcontent.html",
                {
                    content : content
                },function(data){
                    console.log(data.info);
                },
                dataType="json")
        console.log('content:' + content)
    })
</script>
</body>
</html>
