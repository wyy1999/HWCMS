<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccoutInfo.aspx.cs" Inherits="HW.CMS.WEB.AccoutInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700"/>
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

    <%-- bootsharp --%>
   <%-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />--%>
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
                            <li class="breadcrumb-item"><a href="index.html">支出表</a></li>
                            <li class="breadcrumb-item active"></li>
                            <asp:Label type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" runat="server" Text="添加"></asp:Label>
                        </ul>
                    </div>
                    <div>
                        
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <tr>
                                        <th>支出id
                                        </th>
                                        <th>月份
                                        </th>
                                        <th>工资总金额
                                        </th>
                                        <th>报备总金额
                                        </th>
                                        <th>研发总金额
                                        </th>
                                         <th>财务人员姓名
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("AccoutId") %>
                                    </td>
                                    <td>
                                        <%#Eval("AccMonth") %>
                                    </td>
                                    <td>
                                        <%#Eval("ACCSalary") %>￥
                                    </td>
                                    <td>
                                        <%#Eval("AccReportModey") %>￥
                                    </td>
                                    <td>
                                        <%#Eval("AccResMoney") %>￥
                                    </td>
                                    <td>
                                        <%#Eval("AccName") %>
                                    </td>
                                    <td>
                                        <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("AccoutId") %>','<%#Eval("AccMonth") %>','<%#Eval("ACCSalary") %>','<%#Eval("AccReportModey") %>','<%#Eval("AccResMoney") %>')">修改</a>
                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger" CommandName="delete" CommandArgument='<%#Eval("AccoutId") %>'>删除</asp:LinkButton>
                                        

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
                                            <td>月份</td>
                                            <td>
                                                <asp:TextBox ID="AccMonth" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>工资总金额</td>
                                            <td>
                                                <asp:TextBox ID="ACCSalary" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>报备总金额</td>
                                            <td>
                                                <asp:TextBox ID="AccReportModey" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>研发总金额</td>
                                            <td>
                                                <asp:TextBox ID="AccResMoney" runat="server"></asp:TextBox></td>
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
                        function addressUpdate(id, AccMonth, ACCSalary, AccReportModey, AccResMoney) {
                            $("#update_AccoutId").val(id);
                            $("#update_month").val(AccMonth);
                            $("#update_ACCSalary").val(ACCSalary);
                            $("#update_AccReportModey").val(AccReportModey);
                            $("#update_AccResMoney").val(AccResMoney);
                          
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
                                                <td>支出id</td>
                                                <td>
                                                    <asp:TextBox ID="update_AccoutId" name="update_AccoutId"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                                             <tr>
                                                <td>月份</td>
                                                <td>
                                                    <asp:TextBox ID="update_month" name="update_ACCSalary"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>工资金额</td>
                                                <td>
                                                    <asp:TextBox ID="update_ACCSalary" name="update_ACCSalary"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>报备总金额</td>
                                                <td>
                                                    <asp:TextBox ID="update_AccReportModey" name="update_AccSubsidy"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>研发总金额</td>
                                                <td>
                                                    <asp:TextBox ID="update_AccResMoney" name="update_AccFiveMoney"
                                                        class="form-control" runat="server"></asp:TextBox></td>
                                            </tr>
                         
                                        </table>
                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            取消</button>
                                    <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
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

