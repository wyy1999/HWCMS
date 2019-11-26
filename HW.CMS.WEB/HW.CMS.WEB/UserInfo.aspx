<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="HW.CMS.WEB.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700" />
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <meta charset="utf-8">
    <%-- bootsharp --%>
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />--%>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        table {
            width: 2000px;
            text-align: center;
        }

            table tr th, td {
                height: 30px;
                line-height: 30px;
                border: 1px solid #ccc;
            }

        #pageStyle {
            display: inline-block;
            width: 32px;
            height: 32px;
            border: 1px solid #CCC;
            line-height: 32px;
            text-align: center;
            color: #999;
            margin-top: 20px;
            text-decoration: none;
        }

            #pageStyle:hover {
                background-color: #CCC;
            }

            #pageStyle .active {
                background-color: #0CF;
                color: #ffffff;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <div class="content-inner">
                <!-- Page Header-->
                <header class="page-header">
                    <div class="container-fluid">
                        <h2 class="no-margin-bottom">人员信息</h2>
                    </div>
                </header>
                <!-- Breadcrumb-->
                <div class="breadcrumb-holder container-fluid">
                    <ul class="breadcrumb">
                        <button style="margin-left: 20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">新员工入职</button>
                    </ul>

                </div>
                <div>
                    <div style="height: 50px; text-align: center; margin-top: 10px">
                        姓名：<asp:TextBox ID="TxtInfoName" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;部门：<asp:DropDownList ID="DropDep" runat="server">
                            <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                            <asp:ListItem Value="1">人事部</asp:ListItem>
                            <asp:ListItem Value="2">财务部</asp:ListItem>
                            <asp:ListItem Value="3">研发部</asp:ListItem>
                            <asp:ListItem Value="4">销售部</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp; 职务：<asp:DropDownList ID="DropDutyName" runat="server">
                            <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                            <asp:ListItem Value="1">总经理</asp:ListItem>
                            <asp:ListItem Value="2">人事经理</asp:ListItem>
                            <asp:ListItem Value="3">财务经理</asp:ListItem>
                            <asp:ListItem Value="4">销售主管</asp:ListItem>
                            <asp:ListItem Value="5">研发主管</asp:ListItem>
                            <asp:ListItem Value="6">普通员工</asp:ListItem>

                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp; 性别：<asp:RadioButtonList ID="Sex" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Selected="True">全部</asp:ListItem>
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>&nbsp;&nbsp;&nbsp;

                           状态：
                        <asp:RadioButtonList ID="RadioState" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Selected="True" Value="0">全部</asp:ListItem>
                            <asp:ListItem Value="1">在职</asp:ListItem>
                            <asp:ListItem Value="2">离职</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="Button1" runat="server" Text="查询" CssClass="btn-success disabled" OnClick="Button1_Click" />
                    </div>

                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>

                            <table cellspacing="0" class="table table-hover">

                                <thead>
                                    <tr>
                                        <th>姓名</th>
                                        <th>年龄</th>
                                        <th>性别</th>
                                        <th>出生年月</th>
                                        <th>身份证号</th>
                                        <th>电话</th>
                                        <th>地址</th>
                                        <th>邮箱</th>
                                        <th>入职时间</th>
                                        <th>离职时间</th>
                                        <th>工龄</th>
                                        <th>所属部门</th>
                                        <th>职位</th>
                                        <th>登录名</th>
                                        <th>工资</th>
                                        <th>在职状态</th>
                                        <th>编辑</th>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tbody>
                                <tr class="warning">

                                    <td><%#Eval("InfoName") %></td>
                                    <td><%#Eval("InfoAge") %></td>
                                    <td><%#Eval("InfoSex") %></td>
                                    <td><%#Eval("InfoDate") %></td>
                                    <td><%#Eval("InfoIdcard") %></td>
                                    <td><%#Eval("InfoTel") %></td>
                                    <td><%#Eval("InfoAddress") %></td>
                                    <td><%#Eval("InfoEmail") %></td>
                                    <td><%#Eval("InfoEntrytime") %></td>
                                    <td><%#Eval("InfoLeavetime") %></td>
                                    <td><%#Eval("InfoWorkyears") %></td>
                                    <td><%#Eval("Dep") %></td>
                                    <td><%#Eval("DutyName") %></td>
                                    <td><%#Eval("UserName") %></td>
                                    <td><%#Eval("InfoSalary") %></td>
                                    <td><%#Eval("InfoStatestring") %></td>
                                    <td>
                                        <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("InfoId") %>','<%#Eval("InfoName") %>','<%#Eval("InfoAge") %>',
                                                   '<%#Eval("InfoSex") %>','<%#Eval("InfoDate") %>','<%#Eval("InfoIdcard") %>','<%#Eval("InfoTel") %>',
                                                '<%#Eval("InfoAddress") %>','<%#Eval("InfoEmail") %>',  '<%#Eval("InfoEntrytime") %>','<%#Eval("InfoLeavetime") %>','<%#Eval("InfoWorkyears") %>',
                                                '<%#Eval("DepId") %>','<%#Eval("DutyId") %>','<%#Eval("Userid") %>','<%#Eval("InfoSalary") %>','<%#Eval("InfoState") %>')">修改</a>
                                    </td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                    <%-- 模态框 --%>
                    <!-- Large modal -->


                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">

                                <div class="modal-header">
                                    <h4 class="modal-title" id="exampleModalLabel">添加</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                </div>
                                <div class="modal-body">

                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">姓名:</label>
                                        <asp:TextBox ID="TxtName" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">年龄:</label>
                                        <asp:TextBox ID="Txtage" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="message-text" class="control-label">性别:</label>
                                        <asp:RadioButtonList ID="Radsex" runat="server" class="form-control" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            <asp:ListItem Selected="True">男</asp:ListItem>
                                            <asp:ListItem>女</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">出生日期:</label>
                                        <asp:TextBox ID="Txtdate" runat="server" type="date" class="form-control"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">身份证号:</label>
                                        <asp:TextBox ID="txtidcard" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">电话:</label>
                                        <asp:TextBox ID="txttel" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="message-text" class="control-label">地址:</label>
                                        <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">邮箱:</label>
                                        <asp:TextBox ID="txtemali" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">入职时间:</label>
                                        <asp:TextBox ID="txttime" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">离职时间:</label>
                                        <asp:TextBox ID="txttime1" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="message-text" class="control-label">工龄:</label>
                                        <asp:TextBox ID="txtyears" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">部门:</label>
                                        <asp:DropDownList ID="Dropdep1" runat="server" class="form-control">
                                            <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                            <asp:ListItem Value="1">人事部</asp:ListItem>
                                            <asp:ListItem Value="2">财务部</asp:ListItem>
                                            <asp:ListItem Value="3">研发部</asp:ListItem>
                                            <asp:ListItem Value="4">销售部</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">职务:</label>
                                        <asp:DropDownList ID="Dropduty" runat="server" class="form-control">
                                            <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                            <asp:ListItem Value="1">总经理</asp:ListItem>
                                            <asp:ListItem Value="2">人事经理</asp:ListItem>
                                            <asp:ListItem Value="3">财务经理</asp:ListItem>
                                            <asp:ListItem Value="4">销售主管</asp:ListItem>
                                            <asp:ListItem Value="5">研发主管</asp:ListItem>
                                            <asp:ListItem Value="6">普通员工</asp:ListItem>

                                        </asp:DropDownList>

                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">登录账号:</label>
                                        <asp:TextBox ID="txtuser" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="message-text" class="control-label">工资:</label>
                                        <asp:TextBox ID="txtmoney1" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">状态:</label>
                                        <asp:DropDownList ID="DropState" runat="server" class="form-control">
                                            <asp:ListItem Value="0">请选择</asp:ListItem>
                                            <asp:ListItem Value="1">请假</asp:ListItem>
                                            <asp:ListItem Value="2">离职</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <asp:Button ID="Button2" runat="server" Text="确定添加" class="btn btn-primary" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <%-- 修改模态框 --%>
                    <script type="text/javascript">
                        function addressUpdate(InfoId, InfoName, InfoAge, InfoSex, InfoDate, InfoIdcard, InfoTel, InfoAddress, InfoEmail,
                            InfoEntrytime, InfoLeavetime, InfoWorkyears, DepId, DutyId, Userid, InfoSalary, InfoState) {
                            $("#update_InfoId").val(InfoId);
                            $("#update_InfoName").val(InfoName);
                            $("#update_InfoAge").val(InfoAge);
                            $("#update_InfoSex").val(InfoSex);
                            $("#update_InfoDate").val(InfoDate);
                            $("#update_InfoIdcard").val(InfoIdcard);
                            $("#update_InfoTel").val(InfoTel);
                            $("#update_InfoAddress").val(InfoAddress);
                            $("#update_InfoEmail").val(InfoEmail);
                            $("#update_InfoEntrytime").val(InfoEntrytime);
                            $("#update_InfoLeavetime").val(InfoLeavetime);
                            $("#update_InfoWorkyears").val(InfoWorkyears);
                            $("#update_DepId").val(DepId);
                            $("#update_DutyId").val(DutyId);
                            $("#update_Userid").val(Userid);
                            $("#update_InfoSalary").val(InfoSalary);
                            $("#update_InfoState").val(InfoState);


                            $("#modal-address-update").modal("show");
                        }
                    </script>

                    <div class="modal fade" id="modal-address-update" tabindex="-1" role="dialog" aria-labelledby="modal-address-update-label"
                        aria-hidden="true" style="display: none;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header" style="text-align: center">
                                    <h3 class="modal-title" id="modal-address-update-label">修改信息</h3>
                                    <button type="button" class="close" data-dismiss="modal">
                                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>

                                </div>
                                <div class="modal-body">

                                    <input type="hidden" id="update_AddressId" />

                                    <div>

                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">编号:</label>
                                            <asp:TextBox ID="update_InfoId" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">姓名:</label>
                                            <asp:TextBox ID="update_InfoName" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">年龄:</label>
                                            <asp:TextBox ID="update_InfoAge" runat="server" class="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">
                                            <label for="message-text" class="control-label">性别:</label>
                                            <asp:RadioButtonList ID="update_InfoSex" runat="server" class="form-control" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem Selected="True">男</asp:ListItem>
                                                <asp:ListItem>女</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">出生日期:</label>
                                            <asp:TextBox ID="update_InfoDate" runat="server" type="date" class="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">身份证号:</label>
                                            <asp:TextBox ID="update_InfoIdcard" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">电话:</label>
                                            <asp:TextBox ID="update_InfoTel" runat="server" class="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">
                                            <label for="message-text" class="control-label">地址:</label>
                                            <asp:TextBox ID="update_InfoAddress" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">邮箱:</label>
                                            <asp:TextBox ID="update_InfoEmail" runat="server" class="form-control"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">入职时间:</label>
                                            <asp:TextBox ID="update_InfoEntrytime" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">离职时间:</label>
                                            <asp:TextBox ID="update_InfoLeavetime" runat="server" class="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">
                                            <label for="message-text" class="control-label">工龄:</label>
                                            <asp:TextBox ID="update_InfoWorkyears" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">部门:</label>
                                            <asp:DropDownList ID="update_DepId" runat="server" class="form-control">
                                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                                <asp:ListItem Value="1">人事部</asp:ListItem>
                                                <asp:ListItem Value="2">财务部</asp:ListItem>
                                                <asp:ListItem Value="3">研发部</asp:ListItem>
                                                <asp:ListItem Value="4">销售部</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">职务:</label>
                                            <asp:DropDownList ID="update_DutyId" runat="server" class="form-control">
                                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                                <asp:ListItem Value="1">总经理</asp:ListItem>
                                                <asp:ListItem Value="2">人事经理</asp:ListItem>
                                                <asp:ListItem Value="3">财务经理</asp:ListItem>
                                                <asp:ListItem Value="4">销售主管</asp:ListItem>
                                                <asp:ListItem Value="5">研发主管</asp:ListItem>
                                                <asp:ListItem Value="6">普通员工</asp:ListItem>

                                            </asp:DropDownList>

                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">登录账号:</label>
                                            <asp:TextBox ID="update_Userid" runat="server" class="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">
                                            <label for="message-text" class="control-label">工资:</label>
                                            <asp:TextBox ID="update_InfoSalary" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">状态:</label>
                                            <asp:DropDownList ID="update_InfoState" runat="server" class="form-control">
                                                <asp:ListItem Value="0">请选择</asp:ListItem>
                                                <asp:ListItem Value="1">请假</asp:ListItem>
                                                <asp:ListItem Value="2">离职</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>

                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            取消</button>
                                        <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" class="btn btn-primary" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"> </script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="js/charts-home.js"></script>
        <!-- Main File-->
        <script src="js/front.js"></script>
    </form>

    <script>  
        $(function () {
            var $table = $('table');
            var currentPage = 0;//当前页默认值为0  
            var pageSize = 5;//每一页显示的数目  
            $table.bind('paging', function () {
                $table.find('tbody tr').hide().slice(currentPage * pageSize, (currentPage + 1) * pageSize).show();
            });
            var sumRows = $table.find('tbody tr').length;
            var sumPages = Math.ceil(sumRows / pageSize);//总页数  

            var $pager = $('<div class="page"></div>');  //新建div，放入a标签,显示底部分页码  
            for (var pageIndex = 0; pageIndex < sumPages; pageIndex++) {
                $('<a href="#" id="pageStyle" onclick="changCss(this)"><span>' + (pageIndex + 1) + '</span></a>').bind("click", { "newPage": pageIndex }, function (event) {
                    currentPage = event.data["newPage"];
                    $table.trigger("paging");
                    //触发分页函数  
                }).appendTo($pager);
                $pager.append(" ");
            }
            $pager.insertAfter($table);
            $table.trigger("paging");

            //默认第一页的a标签效果  
            var $pagess = $('#pageStyle');
            $pagess[0].style.backgroundColor = "#006B00";
            $pagess[0].style.color = "#ffffff";
        });

        //a链接点击变色，再点其他回复原色  
        function changCss(obj) {
            var arr = document.getElementsByTagName("a");
            for (var i = 0; i < arr.length; i++) {
                if (obj == arr[i]) {       //当前页样式  
                    obj.style.backgroundColor = "#006B00";
                    obj.style.color = "#ffffff";
                }
                else {
                    arr[i].style.color = "";
                    arr[i].style.backgroundColor = "";
                }
            }
        }
    </script>
</body>
</html>



