<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>修改员工界面</title>
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
            var month = date.getMonth() + 1<10? "0"+(date.getMonth() + 1):date.getMonth() + 1;
            var strDate = date.getDate()<10? "0" + date.getDate():date.getDate();
            var currentdate = date.getFullYear() + seperator1  + month  + seperator1  + strDate
                + " "  + date.getHours()  + seperator2  + date.getMinutes()
                + seperator2 + date.getSeconds();
            return currentdate;
        }
    </script>
</head>
<body>
<#if editType == 0>
    <h1>修改员工信息</h1>
<form action="${request.contextPath}/editEmpSubmit" method="post" id="empForm">
    <input type="hidden" name="empid" value="${employee.empid}"/>
    <table class="table table-striped">
        <tr>
            <td>员工姓名</td>
            <td><label>
                    <input class="form-control" type="text" name="empname" value="${employee.empname}"/>
                </label></td>
        </tr>
        <tr>
            <td>员工性别</td>
            <td>
                <select name="empgender" id="genderSelect">
                    <option value="男" <#if "男"== employee.empgender> selected="selected"</#if>>男</option>
                    <option value="女" <#if "女"== employee.empgender> selected="selected"</#if>>女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>员工年龄</td>
            <td><label>
                    <input class="form-control" type="text" name="empage" value="${employee.empage}" required="required"/>
                </label></td>
        </tr>
        <tr>
            <td>员工薪水</td>
            <td><label>
                    <input class="form-control" type="text" name="empsalary" value="${employee.empsalary}" required="required"/>
                </label></td>
        </tr>
        <tr>
            <td>员工类别</td>
            <td>
                <select name="emptype">
                    <option value="0" <#if 0 == employee.emptype> selected="selected"</#if>>员工</option>
                    <option value="1" <#if 1== employee.emptype> selected="selected"</#if>>管理员</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>员工联系方式</td>
            <td><label>
                    <input class="form-control" type="text" name="emptelephone" value="${employee.emptelephone}" required="required"/>
                </label></td>
        </tr>
        <tr>
            <td>员工密码</td>
            <td><label>
                    <input class="form-control" type="text" name="emppassword" value="" required="required"/>
                </label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input class="btn btn-default" type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
    <#elseif editType == 1>
        <h1>修改客户信息</h1>
        <form action="${request.contextPath}/editCustomerSubmit" method="post">
            <input type="hidden" name="customerid" value="${customer.customerid}"/>
            <table class="table table-striped">
                <tr>
                    <td>客户姓名</td>
                    <td><label>
                            <input class="form-control" type="text" name="customername" value="${customer.customername}" required="required"/>
                        </label></td>
                </tr>
                <tr>
                    <td>客户地址</td>
                    <td><label>
                            <input class="form-control" type="text" name="customeraddress" value="${customer.customeraddress}" required="required"/>
                        </label></td>
                </tr>
                <tr>
                    <td>客户联系方式</td>
                    <td><label>
                            <input class="form-control" type="text" name="customertelephone" value="${customer.customertelephone}" required="required"/>
                        </label></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input class="btn btn-default" type="submit" value="提交">
                    </td>
                </tr>
            </table>
        </form>
    <#elseif editType == 2>
    <h1>修改商品信息</h1>
    <form action="${request.contextPath}/editItemSubmit" method="post">
        <input type="hidden" name="itemid" value="${item.itemid}"/>
        <table class="table table-striped">
            <tr>
                <td>商品名称</td>
                <td><label>
                        <input class="form-control" type="text" name="itemname" value="${item.itemname}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品价格</td>
                <td><label>
                        <input class="form-control" type="text" name="itemprice" value="${item.itemprice}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品数量</td>
                <td><label>
                        <input  class="form-control" type="text" name="itemamount" value="${item.itemamount}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品制造商</td>
                <td><label>
                        <input class="form-control" type="text" name="itemman" value="${item.itemman}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>商品供应商名称</td>
                <td>
                    <select name="itemsupplierid">
                        <#list supplierList as supplier>
                            <option value=${supplier.supplierid} <#if supplier.supplierid== item.itemsupplierid> selected="selected"</#if> >${supplier.suppliername}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>商品仓库名称</td>
                <td>
                    <select name="itemhouseid">
                        <#list houseList as house>
                            <option value=${house.houseid} <#if house.houseid== item.itemhouseid> selected="selected"</#if> >${house.housename}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="btn btn-default" type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
    <#elseif editType == 3>
    <h1>修改供应商信息</h1>
    <form action="${request.contextPath}/editSupplierSubmit" method="post">
        <input type="hidden" name="supplierid" value="${supplier.supplierid}"/>
        <table class="table table-striped">
            <tr>
                <td>供应商名称</td>
                <td><label>
                        <input class="form-control" type="text" name="suppliername" value="${supplier.suppliername}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>供应商地址</td>
                <td><label>
                        <input class="form-control" type="text" name="supplieraddress" value="${supplier.supplieraddress}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>供应商联系方式</td>
                <td><label>
                        <input class="form-control" type="text" name="suppliertelephone" value="${supplier.suppliertelephone}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="btn btn-default" type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
<#elseif editType == 4>
    <h1>修改仓库信息</h1>
    <form action="${request.contextPath}/editHouseSubmit" method="post">
        <input type="hidden" name="houseid" value="${house.houseid}"/>
        <table class="table table-striped">
            <tr>
                <td>仓库名称</td>
                <td><label>
                        <input class="form-control" type="text" name="housename" value="${house.housename}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>仓库地址</td>
                <td><label>
                        <input class="form-control" type="text" name="houseaddress" value="${house.houseaddress}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>仓库联系方式</td>
                <td><label>
                        <input class="form-control" type="text" name="housetelephone" value="${house.housetelephone}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="btn btn-default" type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
<#elseif editType == 5>
    <h1>修改进货单信息</h1>
    <form action="${request.contextPath}/editInSubmit" method="post">
        <input type="hidden" name="inid" value="${ins.inid}"/>
        <table class="table table-striped">
            <tr>
                <td>进货商品</td>
                <td>
                    <select name="initemid">
                        <#list itemList as item>
                            <option value=${item.itemid} <#if item.itemid== ins.initemid> selected="selected"</#if> >${item.itemname}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>进货数量</td>
                <td><label>
                        <input class="form-control" type="text" name="inamount" value="${ins.inamount}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>进货总价</td>
                <td><label>
                        <input class="form-control" type="text" name="inprice" value="${ins.inprice}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>供应商</td>
                <td>
                    <select name="insupplierid">
                        <#list supplierList as supplier>
                            <option value=${supplier.supplierid} <#if supplier.supplierid== ins.insupplierid> selected="selected"</#if>>${supplier.suppliername}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="btn btn-default" type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
<#elseif editType == 6>
    <h1>修改销售单信息</h1>
    <form action="${request.contextPath}/editSaleSubmit" method="post">
        <input type="hidden" name="saleid" value="${sale.saleid}"/>
        <table class="table table-striped">
            <tr>
                <td>销售商品</td>
                <td>
                    <select name="saleitemid">
                        <#list itemList as item>
                            <option value=${item.itemid} <#if item.itemid== sale.saleitemid> selected="selected"</#if>>${item.itemname}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>销售数量</td>
                <td><label>
                        <input class="form-control" type="text" name="saleamount" value="${sale.saleamount}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>销售总价</td>
                <td><label>
                        <input class="form-control" type="text" name="saleprice" value="${sale.saleprice}" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td>操作者</td>
                <td>
                <select name="saleempid">
                    <#list employeeList as employee>
                        <option value=${employee.empid} <#if employee.empid == sale.saleempid> selected="selected"</#if>>${employee.empname}</option>
                    </#list>
                </select>
                </td>
            </tr>
            <tr>
                <td>顾客</td>
                <td>
                    <select name="salecustomerid">
                        <#list  customerList as customer>
                            <option value=${customer.customerid} <#if customer.customerid == sale.salecustomerid> selected="selected"</#if>>${customer.customername}</option>
                        </#list>
                    </select>
                </td>
            </tr>
            <tr>
                <td>销售时间</td>
                <td><label>
                        <input class="form-control" type="text" name="saletime" value="${(sale.saletime)?string("yyyy-MM-dd HH:mm:ss")}" readonly="readonly" required="required"/>
                    </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="btn btn-default" type="submit" value="提交">
                </td>
            </tr>
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