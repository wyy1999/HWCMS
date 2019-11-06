<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HW.CMS.WEB.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="js/bootstrap.min.css" rel="stylesheet" />
    <link href="js/font-awesome.min.css" rel="stylesheet" />
    <link href="js/fontastic.css" rel="stylesheet" />

    <link href="js/style.default.css" rel="stylesheet" />
    <link href="js/custom.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>The login page</h1>
                  </div>
                  <p>The best preparation for tomorrow is doing your best today.</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form method="post" class="form-validate">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="input-material"   runat="server"></asp:TextBox>
                     <%-- <input id="login-username" type="text" name="loginUsername" required data-msg="Please enter your username" class="input-material">--%>
                      <label for="login-username" class="label-material">用户名</label>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox2" CssClass="input-material"   runat="server"></asp:TextBox>
<%--                      <input id="login-password" type="password" name="loginPassword" required data-msg="Please enter your password" class="input-material">--%>
                      <label for="login-password" class="label-material">密码</label>
                    </div>
                      <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="登录" OnClick="Button1_Click" />
                    <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                  </form><a href="#" class="forgot-pass">忘记密码?</a><br><small>When all else is lost the future still remains. </small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     
    </div>
    <!-- JavaScript files-->
    <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/Chart.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
    <!-- Main File-->
        <script src="js/front.js"></script>
    </form>
</body>
</html>
