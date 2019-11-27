<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2a.aspx.cs" Inherits="HW.CMS.WEB.ResXq._2a" %>

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
                            <h2 class="no-margin-bottom"><b>（UDMP）高校数字化管理系统详情</b></h2>
                        </div>
                    </header>
                 <br />
        <%-- 信息 --%>
        <div  id="table">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">研发名称：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="focusedInput" type="text" placeholder="高校数字化管理平台" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">研发团队：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="disabledInput" type="text" placeholder="新·IT" disabled>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发负责人：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                        <input class="form-control" id="disabledInput1" type="text" placeholder="谭顺顺" disabled>
                    </div>                   
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发成员：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                         <textarea class="form-control" rows="1" placeholder="潘武豪，田松茂，董雅敏，王洋，张建行" disabled ></textarea>
                    </div>                   
                </div>
        <fieldset disabled>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目愿景：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput" class="form-control" placeholder="数字化管理学生信息，实现线上教务系统。">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目简介：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="在进行信息的删除时，要首先打开提示窗口让用户确认是否删除，只有在用户确认后才能够进行信息的删除。在进行信息的修改时，要能够根据用户选定的教师项进行修改，即列出用户选定的教师的所有信息，在这个基础上进行班级信息的修改。
学生信息管理
教务人员通过学生信息管理模块来管理学生信息，如进行学生信息的添加、修改、删除等。在进行信息的添加时，首先在新的窗口进行学生信息的录入，在保存的时候要进行学生学号是否有重复的检查，如果添加的学生编号有重复就要对用户进行提示。只有在不重复的情况下才能进行信息的添加。在进行信息的删除时，要首先打开提示窗口让用户确认是否要删除，只有在用户确认的情况下才能进行信息的删除。在进行信息的修改时，要根据用户选定的学生进行修改，即列出用户选定的学生的所有信息，在这个基础上进行学生信息的修改。
教师信息管理
教务工作人员通过此模块来管理教师信息，包括教师信息的添加、修改、删除等。在进行信息的添加时候，打开新的窗口进行教师信息的记入，在保存的时候要进行教师编号是否重复的检验，如果添加的教师编号重复要对用户进行提示，只有在不重复的情况下才能进行信息的添加。在进行信息的删除时，要首先打开提示窗口让用户确认是否删除，只有在用户确认后才能够进行信息的删除。在进行信息的修改时，要能够根据用户选定的教师项进行修改，即列出用户选定的教师的所有信息，在这个基础上进行教师信息的修改。
班级信息管理
教务工作人员通过此模块来管理班级的信息，包括班级信息的添加，修改，删除等。在进行信息的添加时，打开新的窗口进行班级信息的录入，在保存的时候要进行班级的编号是否重复的检查，如果添加的班级编号重复要对用户进行提示，只有在信息不重复的前提下才能进行信息的添加，在进行信息的删除时，要首先弹出提示窗口让用户确认是否删除，只有用户确认后才能进行信息的删除。在进行信息的修改时，要能根据用户选定的班级进行修改，即列出用户选定的班级的所有信息，在这个基础上进行班级信息的修改。（如要塞中的班级管理）
课程信息管理
教务工作人员通过该模块来管理课程的基本信息，包括课程信息的添加，修改，删除和班级课程的设置等。在进行信息的添加时，打开新的窗口进行信息的录入，在保存的时候要进行课程的编号是否重复的检查，如果添加的课程编号重复的要对用户进行提示，只有在不重复的情况下才能进行信息的添加。在进行信息的删除的时候，要首先打开窗口让用户确认是否要删除，只有只被确认后才能进行删除操作。在进行信息的修改的时候，要根据用户选定的课程进行修改，即列出用户选定课程的信息，在这个基础上进行课程信息的修改。
成绩信息管理
教务工作人员通过该模块来进行学生成绩的管理，在进行学生成绩的添加时，可用它来为学生设置所在班级的课程表来直接输入成绩。
综合信息查询
通过该模块可以查询教务所需要的各种信息。例如：学生信息查询提供了包括学生学号、姓名、所在班级、班主任名字和宿舍等信息，学生信息进行查询的各种查询条件，用户可以根据单个的查询条件或者它们的组合来进行查询。同时，在查询的时候还提供了进行模糊查询的功能，即该模块能够利用读者输入的非完整的查询条件进行查询，这样更加方便了用户的查询管理。综合查询模块包括了学生信息查询、教师信息查询、班级信息查询、院系信息查询、课程信息查询和成绩查询等各种功能查询。
系统管理
该模块可以对系统登录的用户进行管理。在该模块中，教务人员可以添加允许登录的人员名单以及相应的密码，并对已有的用户进行密码修改或删除。" 

                         disabled ></textarea>
                </div>
           </div>
             <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目特点：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="从学校全局的观点，管理学校的所有用户、角色，以及所有的数据资源。
支持多种认证方式：支持三个级别：用户/密码、校园卡/密码和数字证书。
系统采用灵活的基于角色的权限管理模型。
系统的角色与应用系统的权限关联，必要时也可以同用户组织机构的职位一致，方便了系统管理工作。
根据业务需要，用户可以定制新的角色，并进行授权
基于角色组织大量用户的权限规范，可以极大地减轻管理的负担
集中的权限控制的授权管理面向全局的用户和数据资源，覆盖了各种应用
灵活定义角色之间的继承、相容和互斥关系，授权简单、便捷。
并可以通过定义角色之间继承、相容、相斥等关系有效控制资源的继承性或阻止资源权限继承性，可以满足各种复杂的需求。
在访问控制策略上，用户可以定制不同粗细粒度的安全规则。
作用域限定策略：根据具体业务的需求，管理员可以限定账号/角色对访问内容的作用范围。
时间限定策略：管理员可以指定特定的账号/角色只允许在特定的时间才能对系统进行访问。
访问源限定策略：管理员可以设定地定的账号/角色只允许从特定的网段/IP对系统进行访问。
内容访问限定策略：根据特定业务的需要，管理员可以控制到对数据行级/列级的权限。
信息级别（业务实体）和角色可能需要绑定。
单点登录
最终用户访问不同子系统，只需要登录（认证）一次，就可以访问许可范围内的所有数字化校园应用子系统。从实现技术上讲有基于cookie、rewrite技术和采用portal等几种方法，根据用户的情况可以选用其中的任何一种。
数据传输/存储的加密
为了保证敏感信息的安全性，我们分别对学生成绩、用户登录密码等信息在传输过程和存储都相应地进行了不同程度的加密处理。" 

                         disabled ></textarea>
                </div>
           </div>


            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发周期：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput1" class="form-control" placeholder="4个月">
                </div>
            </div>

            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发预算：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput3" class="form-control" placeholder="50000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">已用金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput4" class="form-control" placeholder="50000￥">
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
            <img src="../img/UDMP.png" width="1000px" height="500px" />
            <br />
            <br />
            <p>高校数字化管理平台</p>
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
