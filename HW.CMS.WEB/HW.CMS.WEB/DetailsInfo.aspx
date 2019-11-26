<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsInfo.aspx.cs" Inherits="HW.CMS.WEB.DetailsInfo" %>

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
                            <li class="breadcrumb-item active">研发详情           </li>
                            <button style="margin-left: 20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加</button>
                        </ul>

                    </div>
                    <div>

                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>

                                <table class="table table-hove">

                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>组名</th>
                                            <th>研发人员</th>
                                            <th>研发名称</th>
                                            <th>研发内容</th>
                                            <th>项目简介</th>
                                            <th>研发金额</th>
                                            <th>已用金额</th>
                                            <th>研发进度</th>
                                            <th>编辑</th>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr class="warning">
                                        <td><%#Eval("DetId") %></td>
                                        <td><%#Eval("ResGroup") %></td>
                                        
                                        <td><%#Eval("DetName") %></td>
                                        <td><%#Eval("Resname") %></td>
                                        <td><%#Eval("ResIntroduce") %></td>
                                        <td><%#Eval("DetContent") %> </td>
                                        <td><%#Eval("ResMoney") %>￥</td>
                                        <td><%#Eval("UseMoney") %>￥</td>
                                        <td><%#Eval("DetPlan") %></td>
                                        <td>
                                               <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("DetId") %>','<%#Eval("DetName") %>','<%#Eval("DetContent") %>',
                                                   '<%#Eval("UseMoney") %>','<%#Eval("DetPlan") %>','<%#Eval("ResId") %>')">修改</a>
                                            <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-danger" CommandName="delete" CommandArgument='<%# Eval("DetId")%>'>删除</asp:LinkButton>
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
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="exampleModalLabel">添加</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">研发人员:</label>
                                            <asp:TextBox ID="TxtName" runat="server" class="form-control" ></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">项目简介:</label>
                                            <asp:TextBox ID="TxtAll" runat="server" class="form-control"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">已用资金:</label>
                                            <asp:TextBox ID="TxtUse" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                       
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">进度:</label>
                                            <asp:TextBox ID="TxtPlan" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">研发表ID:</label>
                                            <asp:TextBox ID="TxtResId" runat="server" class="form-control"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <asp:Button ID="Button1" runat="server" Text="确定添加" class="btn btn-primary" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--修改模态框  --%>
                        <script type="text/javascript">
                            function addressUpdate(DetId, DetName, DetContent, UseMoney, DetPlan, ResId) {
                                $("#update_DetId").val(DetId);
                                $("#update_InfoId").val(DetName);
                                $("#update_AllMoney").val(DetContent);
                                $("#update_UseMoney").val(UseMoney);
                       
                                $("#update_DetPlan").val(DetPlan);
                                $("#update_ResId").val(ResId);
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
                                                <label for="message-text" class="control-label">研发详情编号:</label>
                                                <asp:TextBox ID="update_DetId" runat="server" class="form-control" ></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发人员:</label>
                                                <asp:TextBox ID="update_InfoId" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">项目简介:</label>
                                                <asp:TextBox ID="update_AllMoney" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">已用资金:</label>
                                                <asp:TextBox ID="update_UseMoney" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                          
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发进度:</label>
                                                <asp:TextBox ID="update_DetPlan" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发表ID:</label>
                                                <asp:TextBox ID="update_ResId" runat="server" class="form-control"></asp:TextBox>
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



