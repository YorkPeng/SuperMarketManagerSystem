<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>查询客户界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.customerForm.action = "${request.contextPath}/toLogin";
            document.customerForm.submit();
        }

        function addCustomer() {
            document.customerForm.action = "${request.contextPath}/addCustomer";
            document.customerForm.submit();
        }

        function deleteCustomers() {
            document.customerForm.action = "${request.contextPath}/deleteCustomers";
            document.customerForm.submit();
        }
        function queryCustomer() {
            document.customerForm.action = "${request.contextPath}/queryCustomerWithOption";
            document.customerForm.submit();
        }
    </script>
</head>
<body>
<form name="customerForm">
    <table class="table table-hover">
        <caption> 客户列表</caption>
        <thead>
        <tr>
            <th>客户编号</th>
            <th>客户姓名</th>
            <th>客户地址</th>
            <th>客户联系方式</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#list customerList as customer>
            <tr>
                <td><input type="checkbox" name="customerid" value="${customer.customerid}"></td>
                <td>${customer.customername}</td>
                <td>${customer.customeraddress}</td>
                <td>${customer.customertelephone}</td>
                <td><a href="${request.contextPath}/editCustomer?id=${customer.customerid}">修改信息</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
    <div>
        <input type="text" class="form-control" name="option" placeholder="请输入查询条件"/>
        <input class="btn btn-default" onclick="queryCustomer()" type="button" value="查询"/>
    </div>
    <div>
        <input class="btn btn-default" type="button" value="批量删除客户" onclick="deleteCustomers()">
        <input class="btn btn-default" type="submit" value="增加客户" onclick="addCustomer()">
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