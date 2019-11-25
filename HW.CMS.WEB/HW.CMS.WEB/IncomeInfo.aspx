<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IncomeInfo.aspx.cs" Inherits="HW.CMS.WEB.IncomeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700"/>
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

    <%-- bootsharp --%>
  <%--  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />--%>
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
                            <h2 class="no-margin-bottom">财务信息</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">收入表</a></li>
                            <li class="breadcrumb-item active"></li>
                            <asp:Label type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" runat="server" Text="添加"></asp:Label>
                        </ul>
                    </div>
                    <div>
                        
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <tr>
                                        <th>收入id
                                        </th>
                                        <th>销售金额
                                        </th>
                                        <th>销售内容
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("IncomeId") %>
                                    </td>
                                    <td>
                                        <%#Eval("SaleMoney") %>￥
                                    </td>
                                    <td>
                                        <%#Eval("SaleContent") %>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger" CommandName="delete" CommandArgument='<%#Eval("IncomeId") %>'>删除</asp:LinkButton>
                                        <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("IncomeId") %>','<%#Eval("SaleId") %>')">修改</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                    
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">添加</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                </div>
                                <div class="modal-body">
                                    <table>

                                        <tr>
                                            <td>销售id</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                        </tr>
                                    </table>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        function addressUpdate(id, Id) {
                            $("#update_IncomeId").val(id);
                            $("#update_SaleId").val(Id);
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
                                        <table>
                                            <tr style="display: none">
                                                <td>收入id</td>
                                                <td>
                                                    <asp:TextBox ID="update_IncomeId" name="update_IncomeId"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>销售id</td>
                                                <td>
                                                    <asp:TextBox ID="update_SaleId" name="update_SaleId"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            取消</button>
                                        <asp:Button ID="Button2" runat="server" Text="修改" OnClick="Button2_Click" />
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
                        </div>
                     </div>
                 </div>

    </form>
</body>
</html>
