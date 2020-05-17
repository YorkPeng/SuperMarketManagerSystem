<!doctype html>
<head>
    <meta charset="UTF-8">
    <title>修改成功！</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.menu.action = "${request.contextPath}/toLogin";
            document.menu.submit();
        }
    </script>
</head>
<body>
<h1>修改成功！</h1>
<form name="menu">
    <div>
        <input class="btn btn-default" type="submit" value="返回首页" onclick="toIndex()">
        <input class="btn btn-default" type="button" value="返回上一页" onclick="self.location=document.referrer;">
    </div>
</form>
<footer style="text-align: center;width: 100%">
    <p>Powered By 彭俊源</p>
    <p>3117004852</p>
    <p>Copyright 2020</p>
</footer>
</body>