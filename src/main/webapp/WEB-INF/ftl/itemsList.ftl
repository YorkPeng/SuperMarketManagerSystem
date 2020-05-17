<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询商品界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.itemsForm.action = "${request.contextPath}/toLogin";
            document.itemsForm.submit();
        }

        function addItem() {
            document.itemsForm.action = "${request.contextPath}/addItem";
            document.itemsForm.submit();
        }

        function deleteItems() {
            document.itemsForm.action = "${request.contextPath}/deleteItems";
            document.itemsForm.submit();
        }

        function queryItem() {
            document.itemsForm.action = "${request.contextPath}/queryItemWithOption";
            document.itemsForm.submit();
        }
    </script>
</head>
<body>
<form name="itemsForm">
    <table class="table table-hover">
        <caption>商品列表</caption>
        <thead>
        <tr>
            <th>商品编号</th>
            <th>商品名称</th>
            <th>商品价格</th>
            <th>商品数量</th>
            <th>商品生产商</th>
            <th>商品供应商</th>
            <th>商品仓库</th>
            <th>操作</th>
        </tr>
        </thead>
        <#list itemCustomList as item>
            <tr>
                <td><input type="checkbox" name="itemid" value="${item.itemid}"></td>
                <td>${item.itemname}</td>
                <td>${item.itemprice}</td>
                <td>${item.itemamount}</td>
                <td>${item.itemman}</td>
                <td>
                    ${item.suppliername}
                </td>
                <td>
                    ${item.housename}
                </td>
                <td><a href="${request.contextPath}/editItem?id=${item.itemid}">修改信息</a></td>
            </tr>
        </#list>
    </table>
    <div style="text-align: center;width: 100%">商品总数 ：${totalCount}</div>
    <div>
        <input type="text" class="form-control" name="option" placeholder="请输入查询条件"/>
        <input class="btn btn-default" onclick="queryItem()" type="button" value="查询"/>
    </div>
    <div>
        <input class="btn btn-default" type="button" value="批量删除商品" onclick="deleteItems()">
        <input class="btn btn-default" type="submit" value="增加商品" onclick="addItem()">
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