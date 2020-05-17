<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询进货单界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.inForm.action = "${request.contextPath}/toLogin";
            document.inForm.submit();
        }

        function addIn() {
            document.inForm.action = "${request.contextPath}/addIn";
            document.inForm.submit();
        }

        function deleteIns() {
            document.inForm.action = "${request.contextPath}/deleteIns";
            document.inForm.submit();
        }
    </script>
</head>
<body>
<form name="inForm">
    <table class="table table-hover">
        <caption>进货单列表</caption>
        <input class="btn btn-default" type="button" value="批量删除进货单" onclick="deleteIns()">
        <thead>
        <tr>
            <th>进货单编号</th>
            <th>进货单商品编号</th>
            <th>进货单供应商</th>
            <th>进货单进货数量</th>
            <th>进货单总价</th>
            <th>操作</th>
        </tr>
        </thead>
        <#list inCustomList as ins>
            <tr>
                <td><input type="checkbox" name="inid" value="${ins.inid}"></td>
                <td>
                    ${ins.itemname}
                </td>
                <td>
                    ${ins.suppliername}
                </td>
                <td>${ins.inamount}</td>
                <td>${ins.inprice}</td>
                <td><a href="${request.contextPath}/editIn?id=${ins.inid}">修改信息</a></td>
            </tr>
        </#list>
    </table>
    <div>
        <input class="btn btn-default" type="submit" value="增加进货单" onclick="addIn()">
        <input class="btn btn-default" type="submit" value="返回首页" onclick="toIndex()">
    </div>
</form>
<footer style="text-align: center;width: 100%">
    <p>Powered By 彭俊源</p>
    <p>3117004852</p>
    <p>Copyright 2020</p>
</footer>
</body>
</html>