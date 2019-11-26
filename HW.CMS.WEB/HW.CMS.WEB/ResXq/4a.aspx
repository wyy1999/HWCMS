<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4a.aspx.cs" Inherits="HW.CMS.WEB.ResXq._4a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700" />
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

     <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        #table {
            width:1000px;
            /*height:800px;*/
            font-size:18px;
            float:left;
        }
        #img {
            float:left;
        }
        .big {
            width:100%;
            margin:0 auto;
          
            overflow:hidden;
        }
        #img p {
            font-size:24px;
            text-align:center;
        }

    </style>
</head>
<body>
    <div class="big">
         <div class="page">
                <div class="content-inner">
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">医疗（HIS）管理系统详情</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="ResearchInfo.aspx">研发部</a></li>                                   
                       </ul>
                    </div>
                    </div>
        <%-- 信息 --%>
        <div  id="table">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">研发名称：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="focusedInput" type="text" placeholder="医疗(HIS)管理系统" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">研发团队：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="disabledInput" type="text" placeholder="代码都敲对" disabled>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发负责人：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                        <input class="form-control" id="disabledInput1" type="text" placeholder="冯琦" disabled>
                    </div>                   
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发成员：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                         <textarea class="form-control" rows="1" placeholder="许备备，朱思南，彭林，李梦凡，张文政" disabled ></textarea>
                    </div>                   
                </div>
        <fieldset disabled>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目愿景：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput" class="form-control" placeholder="让医患关系更贴近">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目简介：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="医疗信息管理系统（Hospital Information System简称HIS）是一门容医学、信息、管理、计算机等多种学科为一体的边缘科学，在发达国家已经得到了广泛的应用，
并创造了良好的社会效益和经济效益。医疗信息管理系统是现代化医院运营的必要技术支撑和基础设施，实现医疗信息管理系统的目的就是为了以更现代化、科学化、规范化的手段来加强医院的管理，提高医院的工作效率，改进医疗质量，从而树立现代医院的新形象，这也是未来医院发展的必然方向。
功能：（一）、医院各职能部门微机配备表
整个系统由一台服务器和若干台工作站构成一个网络，各个子系统在网络上协调运行，部门间业务查询灵活，又提供严格的权限控制。每个子系统提供一个公用查询功能，每个子系统在此功能下只能使用它有权调用的功能。网络间共享的数据是实时的，避免造成部门间数据不一致的现象。
（二）、医院管理子系统功能视图
医院管理子系统（HIS）通常包含门诊、住院两部分，而管理的主线则为药品和收款金额。
1、视图说明：
以上为医院的各职能部门的功能视图。方框内的部门为配备计算机的部门；平行线内的部门为医院内相关部门。各部门间传递的是数据信息。由于人事科、总务科等相对功能独立，所以未包括在内。
2、功能详细设计见附录  
医院管理系统是一个综合性的系统。因此，在设计方案中，大连汇源电子系统工程有限公司考虑到管理面广、部门多、信息交换要求及时等特点，同时兼顾医院的实际情况，网络采用国际标准的星型的网络拓扑结构，其具有扩充灵活、维护方便、运行稳定、互连性好、性能价格比合理等特点，是计算机网络系统采用的最优、也最经济的方案。
1. 综合布线
缆线是计算机网络的生命线，是传送信息的动脉，线路如因质量问题而造成损坏，将会使网络全部瘫痪，而停止工作。因此，我们在设计中采用楼宇自动化的综合布线方案，严格按照综合布线的技术要求，以此提高线路的质量和稳定性。同时可用于语言传输，便于用户自由选择，根据现场情况，线缆可连接于RJ-45插座于墙面上，也可用RJ-45插头直接连工作站,这样便于维护和扩充
2. 网络设备
网络设备主要是交换机（Switch　HUB） 和集线器（HUB） ，它们是连接主服务器和工作站的中间设备。交换机（Switch）是网络中的核心设备，它提供服务器、工作站之间的交换式的快速连接，网络中还有一个硬件设备，就是网络适配器，又称网卡，用于连接每一个工作站与线缆。因为网卡是每一个工作站与网络连接的主要设备，为了使工作站稳定的工作，兼容性好、可靠性高的网卡是一定要保证的。
3.网络管理
我们使用以上的网络方案是为了充分利用网络资源，便于管理与维护。在规划中我们使各工作站不互相依赖， 但又互相联系。即一个工作站的运行状态的好坏并不影响其它工作站的正常运行，提高了网络的可靠性。                         " 

                         disabled ></textarea>
                </div>
           </div>
             <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目特点：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="
无缝迁移
原有医疗信息化系统无缝发布应用到手机、平板电脑终端上操作，不改变办公习惯，相关人员无需培训。
提升医护工作效率，增强患者服务体验，优化内部管理机制
快速安全
快速部署，不改变现有IT环境，只要接入移动办公平台就能使用。采用多种安全登录方式保护医患各自的信息安全。
终端网络全覆盖
支持所有的无线网络及手机、平板电脑终端。
应用全覆盖
支持所有B/S，C/S架构的应用程序发布。" 

                         disabled ></textarea>
                </div>
           </div>


            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发周期：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput1" class="form-control" placeholder="15个月">
                </div>
            </div>

            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发预算：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput3" class="form-control" placeholder="20000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">已用金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput4" class="form-control" placeholder="20000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">剩余金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput5" class="form-control" placeholder="0￥">
                </div>
            </div>
            <div class="form-group has-success">
                <label for="inputSuccess" class="col-sm-2 control-label">研发进度：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput6" class="form-control" placeholder="100%">
                </div>
            </div>
           <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">推广负责人：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput7" class="form-control" placeholder="白亚军">
                </div>
            </div>
           
        </form>
            </div>
        <%-- 图片 --%>
        <div  id="img">
            <img src="../img/HIS.png" width="1000px" height="500px" />
            <br />
            <p>医疗（HIS）管理系统</p>
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
</body>
</html>
