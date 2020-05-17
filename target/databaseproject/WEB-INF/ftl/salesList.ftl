<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询销售单界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.saleForm.action = "${request.contextPath}/toLogin";
            document.saleForm.submit();
        }

        function addSale() {
            document.saleForm.action = "${request.contextPath}/addSale";
            document.saleForm.submit();
        }

        function deleteSales() {
            document.saleForm.action = "${request.contextPath}/deleteSales";
            document.saleForm.submit();
        }
    </script>
</head>
<body>
<form name="saleForm">
    <table class="table table-hover">
        <caption>销售单列表</caption>
        <input class="btn btn-default" type="button" value="批量删除销售单" onclick="deleteSales()">
        <thead>
        <tr>
            <th>销售单编号</th>
            <th>销售商品编号</th>
            <th>销售数量</th>
            <th>销售总价</th>
            <th>操作员工</th>
            <th>购买客户</th>
            <th>销售时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <#list saleCustomList as sale>
            <tr>
                <td><input type="checkbox" name="saleid" value="${sale.saleid}"></td>
                <td>
                    ${sale.itemname}
                </td>
                <td>${sale.saleamount}</td>
                <td>${sale.saleprice}</td>
                <td>
                    ${sale.empname}
                </td>
                <td>
                    ${sale.customername}
                </td>
                <td>${(sale.saletime)?string("yyyy-MM-dd HH:mm:ss")}</td>
                <td><a href="${request.contextPath}/editSale?id=${sale.saleid}">修改信息</a></td>
            </tr>
        </#list>
    </table>
    <div>
        <input class="btn btn-default" type="submit" value="增加销售单" onclick="addSale()">
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