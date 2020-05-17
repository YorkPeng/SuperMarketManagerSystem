<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>管理页面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript">
        function queryEmp() {
            document.menu.action="${request.contextPath}/queryEmp";
            document.menu.submit();
        }

        function queryCustomer() {
            document.menu.action="${request.contextPath}/queryCustomer";
            document.menu.submit();
        }

        function queryItems() {
            document.menu.action="${request.contextPath}/queryItems";
            document.menu.submit();
        }
        function querySuppliers() {
            document.menu.action="${request.contextPath}/querySuppliers";
            document.menu.submit();
        }
        function queryHouses() {
            document.menu.action="${request.contextPath}/queryHouses";
            document.menu.submit();
        }
        function queryIns() {
            document.menu.action="${request.contextPath}/queryIns";
            document.menu.submit();
        }
        function querySales() {
            document.menu.action="${request.contextPath}/querySales";
            document.menu.submit();
        }
        function exit() {
            document.menu.action="${request.contextPath}/";
            document.menu.submit();
        }
    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">超市管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <#if emp.emptype==1>
                <li><a href="javascript:void(0);" onclick="queryEmp()">查询员工</a> </li>
                </#if>
                <li><a href="javascript:void(0);" onclick="queryItems()">查询商品</a></li>
                <li><a href="javascript:void(0);" onclick="queryCustomer()">查询客户</a></li>
                <li><a href="javascript:void(0);" onclick="querySuppliers()">查询供应商</a></li>
                <li><a href="javascript:void(0);" onclick="queryHouses()">查询仓库</a></li>
                <li><a href="javascript:void(0);" onclick="queryIns()">查询进货单</a></li>
                <li><a href="javascript:void(0);" onclick="querySales()">查询销售单</a></li>
            </ul>
            <ul class="nav navbar-right navbar-nav">
                <li><a href="javascript:void(0);" onclick="exit()">退出</a> </li>
            </ul>
        </div>
    </div>
</nav>
<div style="padding: 25px">
</div>
<h1>欢迎${emp.empname!""}.<#if emp.emptype == 1> 尊敬的管理员</#if></h1>
    <form name="menu">
    </form>
<div style="padding: 100px">

</div>
<footer style="text-align: center;width: 100%">
    <p>Powered By 彭俊源</p>
    <p>3117004852</p>
    <p>Copyright 2020</p>
</footer>
</body>
</html>