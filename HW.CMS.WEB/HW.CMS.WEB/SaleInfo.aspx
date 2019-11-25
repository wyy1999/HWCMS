<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaleInfo.aspx.cs" Inherits="HW.CMS.WEB.SaleInfo" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
         
                <div class="content-inner">
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">销售信息</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">销售部</a></li>
                            <li class="breadcrumb-item active">销售情况           </li>
                            <button style="margin-left: 20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加</button>
                        </ul>
                    </div>
                    <div>
                        <div style="height:50px;text-align:center;margin-top:10px">
                        销售内容：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        部门：<asp:DropDownList ID="DropDownList2" runat="server" >
                                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                                <asp:ListItem Value="1">人事部</asp:ListItem>
                                                <asp:ListItem Value="2">财务部</asp:ListItem>
                                                <asp:ListItem Value="3">研发部</asp:ListItem>
                                                <asp:ListItem Value="4">销售部</asp:ListItem>
                                            </asp:DropDownList>
                           
                        <asp:Button ID="Button1" runat="server" Text="查询" class="btn btn-success" OnClick="Button1_Click" />
                             </div>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1" >
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>组名</th>
                                            <th>销售内容</th>
                                            <th>销售金额</th>
                                            <th>报备部门</th>
                                            <th>编辑</th>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr>

                                        <td><%#Eval("GroupName")%></td>
                                        <td><%#Eval("SaleContent")%></td>
                                        <td><%#Eval("SaleMoney")%> ￥</td>
                                        <td><%#Eval("Dep")%></td>
                                        <td>
                                            
                                             <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("SaleId") %>','<%#Eval("GroupName") %>','<%#Eval("SaleContent") %>','<%#Eval("SaleMoney") %>','<%#Eval("DepId") %>')">修改</a>
                                            <asp:LinkButton ID="LinkButton3" class="btn btn-danger" CommandName="delete" CommandArgument='<%#Eval("SaleId")%>' runat="server">删除</asp:LinkButton>
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
                                            <label for="recipient-name" class="control-label">组名:</label>
                                            <asp:TextBox ID="TxtName" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">销售内容:</label>
                                            <asp:TextBox ID="TxtCon" runat="server" class="form-control"></asp:TextBox>

                                        </div>

                                        <div class="form-group">
                                            <label for="message-text" class="control-label">销售金额:</label>
                                            <asp:TextBox ID="TxtMoney" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">部门:</label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                                <asp:ListItem Value="1">人事部</asp:ListItem>
                                                <asp:ListItem Value="2">财务部</asp:ListItem>
                                                <asp:ListItem Value="3">研发部</asp:ListItem>
                                                <asp:ListItem Value="4">销售部</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <asp:Button ID="Button2" runat="server" Text="确定添加" class="btn btn-primary" OnClick="Button2_Click1" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- 修改模态框 --%>
                        <script type="text/javascript">
                            function addressUpdate(SaleId, GroupName, SaleContent, SaleMoney, DepId) {
                                $("#update_SaleId").val(SaleId);
                                $("#update_GroupName").val(GroupName);
                                $("#update_SaleContent").val(SaleContent);
                                $("#update_SaleMoney").val(SaleMoney);
                                $("#update_DepId").val(DepId);                             
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
                                            <span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                                        </button>

                                    </div>
                                    <div class="modal-body">

                                        <input type="hidden" id="update_AddressId" />

                                        <div>

                                            <div class="form-group">
                                                <label for="message-text" class="control-label">销售编号:</label>
                                                <asp:TextBox ID="update_SaleId" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">组名:</label>
                                                <asp:TextBox ID="update_GroupName" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">销售内容:</label>
                                                <asp:TextBox ID="update_SaleContent" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">销售金额:</label>
                                                <asp:TextBox ID="update_SaleMoney" runat="server" class="form-control"></asp:TextBox>
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
                                        </div>
                                        <div class="form-group" style="text-align: center">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                                取消</button>
                                            <asp:Button ID="Button3" runat="server" Text="修改"  class="btn btn-primary"  OnClick="Button3_Click1"/>
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


