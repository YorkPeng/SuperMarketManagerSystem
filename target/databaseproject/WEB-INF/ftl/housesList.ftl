<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询仓库界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.houseForm.action = "${request.contextPath}/toLogin";
            document.houseForm.submit();
        }

        function addHouse() {
            document.houseForm.action = "${request.contextPath}/addHouse";
            document.houseForm.submit();
        }

        function deleteHouses() {
            document.houseForm.action = "${request.contextPath}/deleteHouses";
            document.houseForm.submit();
        }
        function queryHouse() {
            document.houseForm.action = "${request.contextPath}/queryHouseWithOption";
            document.houseForm.submit();
        }
    </script>
</head>
<body>
<form name="houseForm">
    <table class="table table-hover">
        <caption>仓库列表</caption>
        <thead>
        <tr>
            <th>仓库编号</th>
            <th>仓库名称</th>
            <th>仓库地址</th>
            <th>仓库联系方式</th>
            <th>操作</th>
        </tr>
        </thead>
        <#list housesList as house>
            <tr>
                <td><input type="checkbox" name="houseid" value="${house.houseid}"></td>
                <td>${house.housename}</td>
                <td>${house.houseaddress}</td>
                <td>${house.housetelephone}</td>
                <td><a href="${request.contextPath}/editHouse?id=${house.houseid}">修改信息</a></td>
            </tr>
        </#list>
    </table>
    <div>
        <input type="text" class="form-control" name="option" placeholder="请输入查询条件"/>
        <input class="btn btn-default" onclick="queryHouse()" type="button" value="查询"/>
    </div>
    <div>
        <input class="btn btn-default" type="button" value="批量删除仓库" onclick="deleteHouses()">
        <input class="btn btn-default" type="submit" value="增加仓库" onclick="addHouse()">
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