<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveInfo.aspx.cs" Inherits="HW.CMS.WEB.LeaveInfo" %>

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
                            <h2 class="no-margin-bottom">出勤信息</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="ResearchInfo.aspx">出勤情况</a></li>
                            <li class="breadcrumb-item active">请假信息           </li>
                            <button style="margin-left:20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加</button>
                        </ul>
                         
                    </div>
                    <div>
                        <div style="height:50px;text-align:center;margin-top:10px">

                            部门名称：<asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                <asp:ListItem Value="1">人事部</asp:ListItem>
                                <asp:ListItem Value="2">财务部</asp:ListItem>
                                <asp:ListItem Value="3">研发部</asp:ListItem>
                                <asp:ListItem Value="4">销售部</asp:ListItem>
                            </asp:DropDownList>
                            审批状态：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="2" Selected="True">全部</asp:ListItem>
                            <asp:ListItem Value="0">未审核</asp:ListItem>
                            <asp:ListItem Value="1">已审核</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="Button1" runat="server" Text="查询"  class="btn btn-success" OnClick="Button1_Click"/>
                        </div>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
                            <HeaderTemplate>
                                
                                <table class="table table-hove">
                                   
                                    <thead>
                                        <tr>
                                            <th>请假id</th>
                                            <th>员工</th>
                                            <th>部门</th>
                                            <th>请假时间</th>
                                            <th>请假原因</th>
                                            <th>审核状态</th>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr class="warning">
                                        <td><%#Eval("LeaveId") %></td>
                                        <td><%#Eval("InfoName") %></td>
                                        <td><%#Eval("Dep") %></td>
                                        <td><%#Eval("LeaveTime") %></td>
                                        <td><%#Eval("LeaveReason") %></td>
                                        <td><%#Eval("LeaveStatestr") %></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-info" CommandName="delete" CommandArgument='<%#Eval("LeaveId") %>' >删除</asp:LinkButton> 
<%--                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-info" CommandName="update" CommandArgument='<%#Eval("LeaveId") %>' >修改</asp:LinkButton>--%>                                     
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
                                                <label for="recipient-name" class="control-label">产品名称:</label>                                                
                                                <asp:TextBox ID="TxtName" runat="server" class="form-control" ></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">产品内容:</label>
                                                <asp:TextBox ID="TxtCon" runat="server" class="form-control" ></asp:TextBox>
                                                
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">研发金额:</label>
                                                <asp:TextBox ID="TxtMoney" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                             <div class="form-group">
                                                <label for="message-text" class="control-label">研发状态:</label>
                                                <asp:TextBox ID="TxtState" runat="server" class="form-control"></asp:TextBox>
                                                 
                                            </div>
                                       
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                       <asp:Button ID="Button2" runat="server" Text="确定添加"  class="btn btn-primary"  />
                                        
                                        
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



