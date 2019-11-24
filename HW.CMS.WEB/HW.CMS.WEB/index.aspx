<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HW.CMS.WEB.index" %>

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
            <!-- 头部-->
            <header class="header">
                <nav class="navbar">
                    <!-- 搜索框-->
                   <%-- <div class="search-box">
                        <button class="dismiss"><i class="icon-close">123</i></button>
                        <form id="searchForm" action="#" role="search">
                            <input type="search" placeholder="What are you looking for..." class="form-control">
                        </form>
                    </div>--%>
                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between">
                            <!-- 左侧标题-->
                            <div class="navbar-header">
                                <!-- Navbar Brand -->
                                <a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                                    <div class="brand-text d-none d-lg-inline-block"><span>公司管理 </span><strong>系统   </strong></div>
                                    <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                                </a>
                                <!-- 切换按钮-->
                                <a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                            </div>
                            <!-- 导航栏右侧 -->
                            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                                <!-- Search-->
                                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search">第一个</i></a></li>
                                <!-- Notifications-->
                                <li class="nav-item dropdown"><a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o">第二个 </i><span class="badge bg-red badge-corner">12</span></a>
                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content">菜单第一个</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                <div class="notification-time"><small>10 minutes ago</small></div>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"><strong>view all notifications                                            </strong></a></li>
                                    </ul>
                                </li>
                                <!-- Messages                        -->
                                <li class="nav-item dropdown"><a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o">第三个  </i><span class="badge bg-orange badge-corner">10</span></a>
                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile">
                                                <img src="img/avatar-1.jpg" alt="图片" class="img-fluid rounded-circle">
                                            </div>
                                            <div class="msg-body">
                                                <h3 class="h5">Jason Doe</h3>
                                                <span>Sent You Message</span>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile">
                                                <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                                            </div>
                                            <div class="msg-body">
                                                <h3 class="h5">Frank Williams</h3>
                                                <span>Sent You Message</span>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile">
                                                <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle">
                                            </div>
                                            <div class="msg-body">
                                                <h3 class="h5">Ashley Wood</h3>
                                                <span>Sent You Message</span>
                                            </div>
                                        </a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"><strong>Read all messages   </strong></a></li>
                                    </ul>
                                </li>
                                <!-- Languages dropdown    -->
                                <%--<li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle">
                                    <img src="img/flags/16/GB.png" alt="图片"><span class="d-none d-sm-inline-block">语言</span></a>
                                    <ul aria-labelledby="languages" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <img src="img/flags/16/DE.png" alt="English" class="mr-2">菜单1</a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <img src="img/flags/16/FR.png" alt="English" class="mr-2">菜单2                                         </a></li>
                                    </ul>
                                </li>--%>
                                <!-- Logout    -->
                                <li class="nav-item"><a href="login.aspx" class="nav-link logout"><span class="d-none d-sm-inline">退出</span><i class="fa fa-sign-out"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch">
                <!-- Side Navbar -->
                <nav class="side-navbar">
                    <!-- Sidebar Header-->
                    <div class="sidebar-header d-flex align-items-center">
                        <div class="avatar">
                            <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle">
                        </div>
                        <div class="title">
                            <h1 class="h4">qwe</h1>
                            <p>qwe</p>
                        </div>
                    </div>
                    <!-- Sidebar Navidation Menus-->
                    <span class="heading">菜单</span>
                    <ul class="list-unstyled">
                        <li class="active"><a href="index.aspx"><i class="icon-home"></i>首页 </a></li>
                        <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"><i class="icon-grid"></i>公司人员信息 </a>
                             <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                                <li><a href="InfoTable.aspx" target="frame">登录信息</a></li>
                                <li><a href="UserInfo.aspx" target="frame">人员详情</a></li>
                               
                            </ul>
                        </li>
                        <li><a href="#exampledropdownDropdown5" aria-expanded="false" data-toggle="collapse"><i class="fa fa-bar-chart"></i>出勤情况 </a>
                            <ul id="exampledropdownDropdown5" class="collapse list-unstyled ">
                                <li><a href="ClockInfo.aspx" target="frame">打卡信息</a></li>
                                <li><a href="LeaveInfo.aspx" target="frame">请假信息</a></li>                              
                            </ul>

                        </li>
                        <li><a href="ReportInfo.aspx"><i class="icon-padnote"></i>公司报备</a></li>
                           <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"><i class="icon-padnote"></i>公司财务 </a>
                            <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                                <li><a href="AccoutInfo.aspx" target="frame">支出</a></li>
                                <li><a href="IncomeInfo.aspx"target="frame">收入</a></li>
                                
                            </ul>
                        </li>
                        <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"><i class="icon-padnote"></i>研发部 </a>
                            <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                                <li><a href="ResearchInfo.aspx"target="frame">研发内容</a></li>
                                <li><a href="DetailsInfo.aspx" target="frame">研发详情</a></li>
                               
                            </ul>
                        </li>
                        <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"><i class="icon-padnote"></i>销售部 </a>
                             <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                                <li><a href="SaleInfo.aspx" target="frame">销售情况</a></li>
                                <li><a href="PersonSaleInfo.aspx" target="frame">个人销售情况</a></li>
                                
                            </ul>
                        </li>
                       <%-- <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"><i class="icon-interface-windows"></i>Example dropdown </a>
                            <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                            </ul>
                        </li>--%>
                        <li><a href="TheMap/examples/index.html"><i class="icon-interface-windows"></i>产品分布图 </a></li>
                    </ul>
                    <span class="heading">制度</span>
                    <ul class="list-unstyled">
                        <li><a href="timer.aspx" target="frame"><i class="icon-flask"></i>打卡</a></li>
                        <li><a href="leave.aspx" target="frame"><i class="icon-screen"></i>请假</a></li>
                        <%--<li><a href="#"><i class="icon-mail"></i>Demo </a></li>
                        <li><a href="#"><i class="icon-picture"></i>Demo </a></li>--%>
                    </ul>
                </nav>
<%--                 <div class="content-inner">--%>
          <!-- Page Header-->
         <%-- <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">图表</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">345</a></li>
              <li class="breadcrumb-item active">234            </li>
            </ul>--%>
 <%--         </div>--%>
           <div>
                      <iframe name="frame" src="" frameborder="" align="right" width="2000px" height="1000px" scrolling="yes"></iframe>
                  </div>
        </div>
         <%--   </div>--%>
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
    <script>
        <
    </script>
</body>
</html>
