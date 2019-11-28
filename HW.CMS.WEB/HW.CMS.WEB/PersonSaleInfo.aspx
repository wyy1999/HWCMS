<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonSaleInfo.aspx.cs" Inherits="HW.CMS.WEB.PersonSaleInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

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
              <h2 class="no-margin-bottom">销售情况</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              
                <button style="margin-left:20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">添加个人销售</button>
            </ul>
          </div>
           <div>
               <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                   <HeaderTemplate>
                       <table class="table table-hover">
                           <thead>
                               <tr>
                                 
                                   <th>销售人员</th>
                                   <th>销售内容</th>
                                   <th>销售金额</th>
                                   <th>消费金额</th>
                                   <th>编辑</th>
                               </tr>
                           </thead>
                      
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tbody>
                           <tr>
                              
                               <td><%#Eval("PerName")%></td>
                               <td><%#Eval("PerContent")%></td>
                               <td><%#Eval("PerMoney")%>￥</td>
                               <td><%#Eval("ConMoney")%>￥</td>
                               <td>                                   
                                   <a href="#" class="btn btn-info" onclick="addressUpdate('<%#Eval("PerId") %>','<%#Eval("PerName") %>','<%#Eval("PerContent") %>','<%#Eval("PerMoney") %>','<%#Eval("ConMoney") %>')">修改</a>
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-danger" CommandName="delete" CommandArgument='<%#Eval("PerId")%>' runat="server">删除</asp:LinkButton>
                                   
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
                                                <label for="recipient-name" class="control-label">员工:</label>                                                
                                                <asp:TextBox ID="TxtInfoId" runat="server" class="form-control" ></asp:TextBox>
                                            </div>
        
                                            
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">销售内容:</label>
                                                <asp:TextBox ID="TxtPerContent" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                             <div class="form-group">
                                                <label for="message-text" class="control-label">销售金额:</label>
                                                <asp:TextBox ID="TxtPerMoney" runat="server" class="form-control"></asp:TextBox>
                                                 
                                            </div>
                                        <div class="form-group">
                                                <label for="message-text" class="control-label">消费金额:</label>
                                                <asp:TextBox ID="TxtConMoney" runat="server" class="form-control"></asp:TextBox>      
                                            </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                       <asp:Button ID="Button2" runat="server" Text="确定添加"  class="btn btn-primary" OnClick="Button2_Click1"  />                                                                             
                                    </div>
                                </div>
                            </div>      
                        </div>

               <%-- 修改 --%>
               <script type="text/javascript">
                            function addressUpdate(PerId, PerName, PerContent, PerMoney,ConMoney) {
                                $("#update_PerId").val(PerId);
                                $("#update_InfoId").val(PerName);
                               
                                $("#update_PerContent").val(PerContent);
                                $("#update_PerMoney").val(PerMoney);  
                                $("#update_ConMoney").val(ConMoney);  
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
                                                <label for="message-text" class="control-label">个人销售编号:</label>
                                                <asp:TextBox ID="update_PerId" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">员工:</label>
                                                <asp:TextBox ID="update_InfoId" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">销售内容:</label>
                                                <asp:TextBox ID="update_PerContent" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">销售金额:</label>
                                               <asp:TextBox ID="update_PerMoney" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="control-label">消费金额:</label>
                                                <asp:TextBox ID="update_ConMoney" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group" style="text-align: center">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                                取消</button>
                                            <asp:Button ID="Button3" runat="server" Text="修改"  class="btn btn-primary"  OnClick="Button3_Click"/>
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
