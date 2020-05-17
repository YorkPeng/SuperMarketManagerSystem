<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>员工界面</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.empForm.action = "${request.contextPath}/toLogin";
            document.empForm.submit();
        }

        function addEmp() {
            document.empForm.action = "${request.contextPath}/addEmp";
            document.empForm.submit();
        }

        function deleteEmps() {
            document.empForm.action = "${request.contextPath}/deleteEmps";
            document.empForm.submit();
        }

        function queryEmp() {
            document.empForm.action = "${request.contextPath}/queryEmpWithOption";
            document.empForm.submit();
        }
    </script>
</head>
<body>
<form name="empForm">
    <table class="table table-hover">
        <caption>员工列表</caption>
        <thead>
        <tr>
            <th>勾选</th>
            <th>员工姓名</th>
            <th>员工性别</th>
            <th>员工年龄</th>
            <th>员工薪水</th>
            <th>员工类型</th>
            <th>员工联系方式</th>
            <th>操作</th>
        </tr>
        </thead>
        <#list employeeList as emp>
            <tr>
                <td><input type="checkbox" name="empid" value="${emp.empid}">${emp.empid}</td>
                <td>${emp.empname}</td>
                <td>${emp.empgender}</td>
                <td>${emp.empage}</td>
                <td>${emp.empsalary}</td>
                <td><#if emp.emptype ==0>员工
                    <#elseif emp.emptype == 1 >
                        管理员
                    </#if>
                </td>
                <td>${emp.emptelephone}</td>
                <td><a href="${request.contextPath}/editEmp?id=${emp.empid}">修改信息</a></td>
            </tr>
        </#list>
    </table>
    <div style="text-align: center;width: 100%">员工总数 ：${totalCount}</div>
    <div>
        <input type="text" class="form-control" name="option" placeholder="请输入查询条件"/>
        <input class="btn btn-default" onclick="queryEmp()" type="button" value="查询"/>
    </div>
        <div>
            <input class="btn btn-default" type="button" value="批量删除员工" onclick="deleteEmps()">
            <input class="btn btn-default" type="submit" value="增加员工" onclick="addEmp()">
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