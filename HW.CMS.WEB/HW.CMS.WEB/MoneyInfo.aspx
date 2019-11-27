<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoneyInfo.aspx.cs" Inherits="HW.CMS.WEB.MoneyInfo" %>

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
                            <h2 class="no-margin-bottom">工资信息</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                            <asp:Label type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" runat="server" Text="添加"></asp:Label>
                        
                    </div>
                    <div>
                        <div style="height:50px;text-align:center;margin-top:10px">

                            员工名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            是否全勤：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="0" Selected="True">全部</asp:ListItem>
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Value="2">否</asp:ListItem>
                        </asp:RadioButtonList>
                            工资状态：<asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Value="0" Selected="True">全部</asp:ListItem>
                                <asp:ListItem Value="1">已结算</asp:ListItem>
                                <asp:ListItem Value="2">未结算</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:Button ID="Button1" runat="server" Text="查询"  class="btn btn-success" OnClick="Button1_Click"/>
                        </div>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <tr>
                                        <th>工资编号
                                        </th>
                                        <th>员工
                                        </th>
                                        <th>迟到次数
                                        </th>
                                        <th>提成
                                        </th>
                                        <th>是否全勤
                                        </th>
                                         <th>工资结算
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("MoneyId") %>
                                    </td>
                                    <td>
                                        <%#Eval("InfoName") %>
                                    </td>
                                    <td>
                                        <%#Eval("Conunt") %>
                                    </td>
                                    <td>
                                        <%#Eval("MoneyDed") %>￥
                                    </td>
                                    <td>
                                       <%#Eval("MoneyStatestr") %>
                                    </td>
                                    <td>
                                        <%#Eval("Moneystastr") %>
                                    </td>
                                    <td>
                                       <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-info" CommandName="update" CommandArgument='<%#Eval("MoneyId") %>' >结算</asp:LinkButton>
                                        

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
                                            <td>员工ID</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>员工</td>
                                            <td>
                                                <asp:TextBox ID="InfoName" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>迟到次数</td>
                                            <td>
                                                <asp:TextBox ID="Conunt" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>提成</td>
                                            <td>
                                                <asp:TextBox ID="MoneyDed" runat="server"></asp:TextBox></td>
                                        </tr>

                                     
                                    </table>


                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <asp:Button ID="Button2" runat="server" Text="添加" OnClick="Button2_Click" />
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
                         </div>
                     </div>
                 </div>

    </form>
   
</body>
</html>
