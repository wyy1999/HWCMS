<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClockInfo.aspx.cs" Inherits="HW.CMS.WEB.ClockInfo" %>

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
<%--    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />--%>
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
              <li class="breadcrumb-item"><a href="index.html">出勤情况</a></li>
              <li class="breadcrumb-item active">打卡表            </li>
            </ul>
          </div>
           <div>
                  
                <asp:Repeater ID="Repeater1" runat="server">
                   <HeaderTemplate>
                       <table  class="table table-hover">
                           
                           <thead>
                               <tr>
                                   <th>打卡id</th>
                                   <th>员工姓名</th>
                                   <th>打卡时间</th>
                                   <th>打卡状态</th> 
                                   
                               </tr>
                           </thead>
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tbody>
                           <tr >
                               <td><%#Eval("ClockId") %></td>
                               <td><%#Eval("UserName") %></td>
                               <td><%#Eval("ClockTime") %></td>
                               <td><%#Eval("ClockStateString") %></td>                              
                              
                           </tr>
                       </tbody>                                         
                   </ItemTemplate>
                   <FooterTemplate>
                       </table>
                   </FooterTemplate>

               </asp:Repeater>
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


