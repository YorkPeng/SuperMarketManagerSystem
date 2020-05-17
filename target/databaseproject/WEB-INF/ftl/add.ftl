<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新增内容</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function toIndex() {
            document.menu.action = "${request.contextPath}/toLogin";
            document.menu.submit();
        }

        function getNowFormatDate() {//获取当前时间
            var date = new Date();
            var seperator1 = "-";
            var seperator2 = ":";
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            var strDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
            var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
            document.getElementById('timeInput').value = currentdate;
        }

    </script>
</head>
<body>
<#if addType == 0>
    <form action="${request.contextPath}/addEmpSubmit" method="post">
        <table class="table table-striped">
            <caption>增加员工</caption>
            <tbody>
            <tr>
                <td>员工姓名</td>
                <td><label>
                        <input class="form-control" type="text" name="empname" placeholder="请输入员工姓名" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>员工性别</td>
                <td>
                    <select name="empgender">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>员工年龄</td>
                <td><label>
                        <input class="form-control" type="text" name="empage" placeholder="请输入员工年龄" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>员工薪水</td>
                <td><label>
                        <input  class="form-control" type="text" name="empsalary" placeholder="请输入员工薪水" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>员工类别</td>
                <td>
                    <select name="emptype">
                        <option value="0">员工</option>
                        <option value="1">管理员</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>员工联系方式</td>
                <td><label>
                        <input class="form-control" type="text" name="emptelephone" placeholder="请输入员工联系方式" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>员工密码</td>
                <td><label>
                        <input class="form-control" type="text" name="emppassword" placeholder="请输入员工密码" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
<#elseif addType == 1>
    <form action="${request.contextPath}/addCustomerSubmit" method="post">
        <table class="table table-striped">
            <caption>增加客户</caption>
            <tbody>
            <tr>
                <td>客户姓名</td>
                <td><label>
                        <input class="form-control" type="text" name="customername" placeholder="请输入客户姓名" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>客户地址</td>
                <td><label>
                        <input class="form-control" type="text" name="customeraddress" placeholder="请输入客户地址" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>客户联系方式</td>
                <td><label>
                        <input class="form-control" type="text" name="customertelephone" placeholder="请输入客户联系方式" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
<#elseif addType == 2>
    <form action="${request.contextPath}/addItemSubmit" method="post">
        <table class="table table-striped">
            <caption>增加商品</caption>
            <tbody>
            <tr>
                <td>商品名称</td>
                <td><label>
                        <input class="form-control" type="text" name="itemname" placeholder="请输入商品名称" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品价格</td>
                <td><label>
                        <input class="form-control" type="text" name="itemprice" placeholder="请输入商品价格" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品数量</td>
                <td><label>
                        <input class="form-control" type="text" name="itemamount" placeholder="请输入商品数量" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品生产商</td>
                <td><label>
                        <input class="form-control" type="text" name="itemman" placeholder="请输入商品生产商" required="required"/>
                    </label>
                </td>
            </tr>
            <tr>
                <td>商品供应商编号</td>
                <td>
                    <select name="itemsupplierid">
                        <#list supplierList as supplier>
                            <option value=${supplier.supplierid}>${supplier.suppliername}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>商品仓库编号</td>
                <td>
                    <select name="itemhouseid">
                        <#list houseList as house>
                            <option value="${house.houseid}">${house.housename}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
<#elseif addType == 3>
    <form action="${request.contextPath}/addSupplierSubmit" method="post">
        <table class="table table-striped">
            <caption>增加供应商</caption>
            <tbody>
            <tr>
                <td>供应商名称</td>
                <td><label>
                        <input class="form-control" type="text" name="suppliername" placeholder="请输入供应商名称" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>供应商地址</td>
                <td><label>
                        <input class="form-control" type="text" name="supplieraddress" placeholder="请输入供应商地址" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>供应商联系方式</td>
                <td><label>
                        <input class="form-control" type="text" name="suppliertelephone" placeholder="请输入供应商联系方式" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
<#elseif addType == 4>
    <form action="${request.contextPath}/addHouseSubmit" method="post">
        <table class="table table-striped">
            <caption>增加仓库</caption>
            <tbody>
            <tr>
                <td>仓库地址</td>
                <td><label>
                        <input class="form-control" type="text" name="houseaddress" placeholder="请输入仓库地址" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>仓库联系方式</td>
                <td><label>
                        <input class="form-control" type="text" name="housetelephone" placeholder="请输入仓库联系方式" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>仓库名称</td>
                <td>
                    <input  class="form-control" type="text" name="housename" placeholder="请输入仓库名称" required="required"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
<#elseif addType == 5>
    <form action="${request.contextPath}/addInSubmit" method="post">
        <table class="table table-striped">
            <caption>增加进货单</caption>
            <tbody>
            <tr>
                <td>进货商品</td>
                <td>
                    <select name="initemid">
                        <#list itemList as item>
                            <option value= ${item.itemid}>${item.itemname}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>进货的供应商</td>
                <td>
                    <select name="insupplierid">
                        <#list supplierList as supplier>
                            <option value=${supplier.supplierid}>${supplier.suppliername}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>进货数量</td>
                <td><label>
                        <input class="form-control" type="text" name="inamount" placeholder="请输入进货数量" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>进货总价</td>
                <td><label>
                        <input class="form-control" type="text" name="inprice" placeholder="请输入进货总价" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
<#elseif addType == 6>
    <form action="${request.contextPath}/addSaleSubmit" method="post">
        <table class="table table-striped">
            <caption>增加销售单</caption>
            <tbody>
            <tr>
                <td>销售商品名称</td>
                <td>
                    <select name="saleitemid">
                        <#list itemList as item>
                            <option value=${item.itemid}>${item.itemname}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>销售商品数量</td>
                <td><label>
                        <input class="form-control" type="text" name="saleamount" placeholder="请输入销售商品数量" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>销售总价</td>
                <td><label>
                        <input class="form-control" type="text" name="saleprice" placeholder="请输入销售总价" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>操作者</td>
                <td>
                    <input class="form-control" type="text" name="saleempid" value="${operator.empname}" readonly="readonly"  required="required"/>
                </td>
            </tr>
            <tr>
                <td>顾客</td>
                <td>
                    <select name="salecustomerid">
                        <#list customerList as customer>
                            <option value=${customer.customerid}>${customer.customername}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>销售时间</td>
                <td>
                    <input class="form-control" id="timeInput" type="text" name="saletime" readonly="readonly">
                    <input type="button" value="获取时间" class="btn btn-default" onclick="getNowFormatDate()">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" class="btn btn-default" value="提交">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</#if>
<form name="menu">
    <div>
        <input class="btn btn-default" type="submit" value="返回首页" onclick="toIndex()">
        <input type="button" value="返回" class="btn btn-default" onclick="self.location=document.referrer;"/>
    </div>
</form>
<footer style="text-align: center;width: 100%">
    <p>Powered By 彭俊源</p>
    <p>3117004852</p>
    <p>Copyright 2020</p>
</footer>
</body>
</html>