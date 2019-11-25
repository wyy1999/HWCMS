<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="HW.CMS.WEB.timer" %>

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


    <%--  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  --%>
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
                            <h2 class="no-margin-bottom">在线打卡</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">人员信息表</li>
                            <li class="breadcrumb-item active">打卡</li>
                        </ul>
                    </div>

                    <div>
                        <div class="jumbotron">
                            <span>员工编号</span>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <hr />
                            <h1>当前时间</h1>
                            <h1>
                                <div id="current_time" style="height: 20px"></div>
                            </h1>
                            <asp:Button ID="Button1" runat="server" Text="签到" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="签退" OnClick="Button2_Click" />
                        </div>







                        <%--                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">LinkButton</asp:LinkButton>--%>
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
            <script src="js/front.js" style="border: 1px solid red"></script>
    </form>



</body>
<script>
    $(function () {

        setInterval(function () {
            var now = (new Date()).toLocaleString();
            $('#current_time').text(now);
        }, 1000);

    })

</script>
</html>
