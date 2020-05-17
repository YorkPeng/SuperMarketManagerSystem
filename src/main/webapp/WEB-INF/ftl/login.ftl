<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>登录页面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="modal-dialog" style="margin-top: 10%;">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title text-center" id="myModalLabel">登录</h4>
        </div>
        <form action="${request.contextPath}/login" method="post">
            <div class="modal-body" id="model-body">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名" autocomplete="off" name="userid" required="required"/>
                    <input type="password" class="form-control" placeholder="密码" autocomplete="off" name="userpassword" required="required"/>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary form-control">登录</button>
                </div>
            </div>
        </form>
    </div><!-- /.modal-content -->
</div><!-- /.modal -->
<footer style="text-align: center;width: 100%">
    <p>Powered By 彭俊源</p>
    <p>3117004852</p>
    <p>Copyright 2020</p>
</footer>
</body>
</html>