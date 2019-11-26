<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResearchInfo.aspx.cs" Inherits="HW.CMS.WEB.ResearchInfo" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">   
                <div class="content-inner">
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">研发信息</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="ResearchInfo.aspx">研发部</a></li>
                            <li class="breadcrumb-item active">研发内容            </li>
                            <button style="margin-left: 20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加</button>
                        </ul>

                    </div>
                    <div>
                        <div style="height:50px;text-align:center;margin-top:10px">

                            产品名称：<asp:TextBox ID="TxtResName" runat="server" ></asp:TextBox>
                        研发状态：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="0" Selected="True">全部</asp:ListItem>
                            <asp:ListItem Value="1">未完成</asp:ListItem>
                            <asp:ListItem Value="2">已完成</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="Button1" runat="server" Text="查询"  class="btn btn-success" OnClick="Button1_Click"/>
                        </div>
                        

                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>

                                <table class="table table-hove">

                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>研发名称</th>
                                            <th>研发内容</th>
                                            <th>研发小组</th>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>研发金额</th>
                                            <th>研发状态</th>
                                            <th>编辑</th>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr class="warning">
                                        <td><%#Eval("ResId") %></td>
                                        <td><%#Eval("Resname") %></td>
                                        <td><%#Eval("ResIntroduce") %></td>
                                        <td><%#Eval("ResGroup") %></td>
                                        <td><%#Eval("BeginTime") %></td>
                                        <td><%#Eval("EndTime") %></td>
                                        <td><%#Eval("ResMoney") %> ￥</td>
                                        <td><%#Eval("ResStateString") %></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-link" CommandArgument='<%#Eval("ResId") %>'>详情 </asp:LinkButton>
                                            <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("ResId") %>','<%#Eval("Resname") %>','<%#Eval("ResIntroduce") %>','<%#Eval("ResGroup") %>','<%#Eval("BeginTime") %>','<%#Eval("EndTime") %>','<%#Eval("ResMoney") %>','<%#Eval("ResState") %>')">修改</a>

                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>

                        </asp:Repeater>
                        <%-- 添加模态框 --%>
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
                                            <label for="recipient-name" class="control-label">研发名称:</label>
                                            <asp:TextBox ID="TxtName" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">研发内容:</label>
                                            <asp:TextBox ID="TxtCon" runat="server" class="form-control"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">研发小组:</label>
                                            <asp:TextBox ID="Txtgroup" runat="server" class="form-control"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">研发金额:</label>
                                            <asp:TextBox ID="TxtMoney" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">研发状态:</label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                                    <asp:ListItem Selected="True" Value="1">未完成</asp:ListItem>
                                                    <asp:ListItem Value="2">已完成</asp:ListItem>
                                                </asp:DropDownList>

                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <asp:Button ID="Button2" runat="server" Text="确定添加" OnClick="Button2_Click" class="btn btn-primary" />
                                    </div>
                                </div>
                            </div>

                        </div>

                        <%-- 修改模态框 --%>
                        <script type="text/javascript">
                            function addressUpdate(ResId, Resname, ResIntroduce,ResGroup, BeginTime, EndTime, ResMoney, ResState) {
                                $("#update_ResId").val(ResId);
                                $("#update_Resname").val(Resname);
                                $("#update_ResIntroduce").val(ResIntroduce);
                                 $("#update_group").val(ResGroup);
                                $("#update_BeginTime").val(BeginTime);
                                $("#update_EndTime").val(EndTime);
                                $("#update_ResMoney").val(ResMoney);
                                $("#update_state").val(ResState);
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
                                                <label for="message-text" class="control-label">研发编号:</label>
                                                <asp:TextBox ID="update_ResId" runat="server" class="form-control" ></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发名称:</label>
                                                <asp:TextBox ID="update_Resname" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发内容:</label>
                                                <asp:TextBox ID="update_ResIntroduce" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发小组:</label>
                                                <asp:TextBox ID="update_group" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">开始时间:</label>
                                                <asp:TextBox ID="update_BeginTime" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">结束时间:</label>
                                                <asp:TextBox ID="update_EndTime" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发金额:</label>
                                                <asp:TextBox ID="update_ResMoney" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发状态:</label>
                                                <asp:DropDownList ID="update_state" runat="server" class="form-control">
                                                    <asp:ListItem  Value="1">未完成</asp:ListItem>
                                                    <asp:ListItem Value="2">已完成</asp:ListItem>
                                                </asp:DropDownList>
                                                <%--<asp:TextBox ID="update_ResState" runat="server" class="form-control"></asp:TextBox>--%>
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

</body>
</html>


