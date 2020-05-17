<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询供应商界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.supplierForm.action = "${request.contextPath}/toLogin";
            document.supplierForm.submit();
        }

        function addSupplier() {
            document.supplierForm.action = "${request.contextPath}/addSupplier";
            document.supplierForm.submit();
        }

        function deleteSuppliers() {
            document.supplierForm.action = "${request.contextPath}/deleteSuppliers";
            document.supplierForm.submit();
        }
        function querySupplier() {
            document.supplierForm.action = "${request.contextPath}/querySupplierWithOption";
            document.supplierForm.submit();
        }
    </script>
</head>
<body>
<form name="supplierForm">
    <table class="table table-hover">
        <caption>供应商列表</caption>
        <thead>
        <tr>
            <th>供应商编号</th>
            <th>供应商姓名</th>
            <th>供应商地址</th>
            <th>供应商联系方式</th>
            <th>操作</th>
        </tr>
        </thead>
        <#list suppliersList as supplier>
            <tr>
                <td><input type="checkbox" name="supplierid" value="${supplier.supplierid}"></td>
                <td>${supplier.suppliername}</td>
                <td>${supplier.supplieraddress}</td>
                <td>${supplier.suppliertelephone}</td>
                <td><a href="${request.contextPath}/editSupplier?id=${supplier.supplierid}">修改信息</a></td>
            </tr>
        </#list>
    </table>
   <div>
        <input type="text" class="form-control" name="option" placeholder="请输入查询条件" required="required"/>
        <input class="btn btn-default" onclick="querySupplier()" type="button" value="查询"/>
    </div>
    <div>
        <input class="btn btn-default" type="button" value="批量删除供应商" onclick="deleteSuppliers()">
        <input class="btn btn-default" type="submit" value="增加供应商" onclick="addSupplier()">
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