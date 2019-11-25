<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportInfo.aspx.cs" Inherits="HW.CMS.WEB.ReportInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

    <%-- booysharp --%>
      <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <div class="content-inner">
                <!-- Page Header-->
                <header class="page-header">
                    <div class="container-fluid">
                        <h2 class="no-margin-bottom">报备</h2>
                    </div>
                </header>
                <!-- Breadcrumb-->
                <div class="breadcrumb-holder container-fluid">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">公司报备</a></li>
                        <li class="breadcrumb-item active">报备表 </li>
                        <button style="margin-left: 20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加</button>
                    </ul>
                </div>
                <div>
                    <div style="height: 50px; text-align: center; margin-top: 10px">
                        报备原因：<asp:TextBox ID="TxtResName" runat="server"></asp:TextBox>
                        审核状态：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="2" Selected="True">全部</asp:ListItem>
                            <asp:ListItem Value="0">未完成</asp:ListItem>
                            <asp:ListItem Value="1">已完成</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="Button1" runat="server" Text="查询" class="btn btn-success" OnClick="Button1_Click" />
                    </div>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                        <HeaderTemplate>
                            <table class="table table-hover">

                                <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>报备原因</th>
                                        <th>报备时间</th>
                                        <th>报备部门</th>
                                        <th>所需金额</th>
                                        <th>审核状态</th>
                                        <th>编辑</th>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tbody>
                                <tr>
                                    <td><%#Eval("ReportId") %> </td>
                                    <td><%#Eval("ReportReason") %></td>
                                    <td><%#Eval("ReportTime") %></td>
                                    <td><%#Eval("Dep") %></td>
                                    <td><%#Eval("ReportMoney") %> ￥</td>
                                    <td><%#Eval("ReportStateString") %></td>
                                    <td>
                                        <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("ReportId") %>','<%#Eval("ReportReason") %>','<%#Eval("ReportTime") %>','<%#Eval("DepId") %>','<%#Eval("ReportMoney") %>','<%#Eval("ReportState") %>')">修改</a>

                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger" CommandName="delete" CommandArgument='<%#Eval("ReportId") %>'>删除</asp:LinkButton>
                                    </td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>

                    <%-- 模态框 --%>
                    <!-- 添加 -->


                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">

                                <div class="modal-header">
                                    <h4 class="modal-title" id="exampleModalLabel">添加</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                </div>
                                <div class="modal-body">

                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">报备原因:</label>
                                        <asp:TextBox ID="Txt1" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">报备时间:</label>
                                        <asp:TextBox ID="Txt2" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="message-text" class="control-label">报备部门:</label>
                                        <asp:TextBox ID="Txt3" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">所需金额:</label>
                                        <asp:TextBox ID="Txt4" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">审核状态:</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                            <asp:ListItem Selected="True" Value="0">未完成</asp:ListItem>
                                            <asp:ListItem Value="1">已完成</asp:ListItem>
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
                        function addressUpdate(ReportId, ReportReason, ReportTime, DepId, ReportMoney, ReportState) {
                            $("#update_ReportId").val(ReportId);
                            $("#update_ReportReason").val(ReportReason);
                            $("#update_ReportTime").val(ReportTime);
                            $("#update_DepId").val(DepId);
                            $("#update_ReportMoney").val(ReportMoney);
                            $("#update_ReportState").val(ReportState);
                            $("#modal-address-update").modal("show");
                        }
                    </script>
                    <%-- 修改 --%>
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
                                            <label for="message-text" class="control-label">ID:</label>
                                            <asp:TextBox ID="update_ReportId" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">报备原因:</label>
                                            <asp:TextBox ID="update_ReportReason" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">报备时间:</label>
                                            <asp:TextBox ID="update_ReportTime" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">报备部门:</label>
                                            <asp:TextBox ID="update_DepId" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">所需金额:</label>
                                            <asp:TextBox ID="update_ReportMoney" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">审核状态:</label>
                                            <asp:DropDownList ID="update_state" runat="server" class="form-control">
                                                <asp:ListItem Selected="True" Value="0">未完成</asp:ListItem>
                                                <asp:ListItem Value="1">已完成</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            取消</button>
                                        <asp:Button ID="Button3" runat="server" Text="修改" class="btn btn-primary" OnClick="Button3_Click" />
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

</body>
</html>


