<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3a.aspx.cs" Inherits="HW.CMS.WEB.ResXq._3a" %>

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
                            <h2 class="no-margin-bottom"><b>图书管理系统详情</b> </h2>
                        </div>
                    </header>
                   <br />
                   
        <%-- 信息 --%>
        <div  id="table">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">研发名称：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="focusedInput" type="text" placeholder="文化堂图书管理系统" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">研发团队：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="disabledInput" type="text" placeholder="致远" disabled>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发负责人：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                        <input class="form-control" id="disabledInput1" type="text" placeholder="于超越" disabled>
                    </div>                   
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发成员：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                         <textarea class="form-control" rows="1" placeholder="陈路明，石金涛，李浩东" disabled ></textarea>
                    </div>                   
                </div>
        <fieldset disabled>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目愿景：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput" class="form-control" placeholder="为更好的进行图书管理，增加图书销售量，实现网上购书">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目简介：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="图书馆管理系统，能进行图书馆管理系统能实测国民经济和企业的各种运行情况；利用过去的数据预测未来；从企业全局出发辅助企业进行管理决策；利用信息控制企业的行为；帮助企业实现其规划目标。
图书馆管理系统合运用了管理科学，系统科学，运筹学，统计学，计算机科学等学科的知识。可以通俗的简化的描述图书馆管理系统的三要素：系统的观点、数学的方法以及计算机的应用。
图书馆管理系统概念结构主要由四大部分组成即信息源、信息处理器、信息用户、信息管理者组成。
项目目标
本项目的设计目标旨在方便图书管理员的操作，减少图书管理员的工作量并使其能更有效的管理书库中的图书，实现了传统的图书管理工作的信息化建设。
本系统的服务对象为图书馆流通部门的工作人员，用户界面友好，不需计算机专业的专门训练即可使用本系统。
设计原则
图书管理处理的信息量比较大。因此对于本系统的设计，需要采取以下一些原则：
删除不必要的管理冗余，实现管理规范化、科学化。
程序代码标准化，软件统一化，确保软件的可维护性和实用性
能够连接各个关联的数据库，获取数据库中的信息。保证各个数据库表格相关的项目之间有相同的属性。
用户进入系统时，首先要进行图书管理员身份的验证。用户输入管理员的密码和编码，输入正确后，系统确认了操作者的合法身份即进入主控程序。
书库维护
书库维护包括新书入库、查询显示、全部显示及删除等模块。
书库维护窗口
对书库进行任何修改后，系统执行退出时，将查看数据库是否已被修改，然后提示用户是否保存修改并按用户要求进行相应操作。                 " 

                         disabled ></textarea>
                </div>
           </div>
             <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目特点：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="1．以通信功能作为界面设计的核心
2．界面必须始终一致
3．界面必须使用户随时掌握任务的进展情况
4．界面必须能够提供帮助
5．界面友好、使用方便
6．输入画面尽可能接近实际
7．具有较强的容错功能
功能
1. 准备和提供统一格式的信息，使各种统计工作简化，使信息成本最低；
2. 及时全面地提供不同要求的、不同细度的信息，以期分析解释现象最快，及时产生正确的控制。
3. 全面系统的保存大量的信息，并能很快的查询和综合，为组织的决策提出信息支持。
4. 利用数学方法和各种模型处理信息，以期预测未来和科学地进行决策。" 

                         disabled ></textarea>
                </div>
           </div>


            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发周期：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput1" class="form-control" placeholder="17个月">
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
                    <input type="text" id="disabledTextInput7" class="form-control" placeholder="李明">
                </div>
            </div>
           
        </form>
            </div>
        <%-- 图片 --%>
        <div  id="img">
            <img src="../img/TS.png" width="1000px" height="500px" />
            <br />
            <br />
            <p>文化堂图书管理系统</p>
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
</body>
</html>
