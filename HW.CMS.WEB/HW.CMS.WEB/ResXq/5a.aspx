<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5a.aspx.cs" Inherits="HW.CMS.WEB.ResXq._5a" %>

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
                            <h2 class="no-margin-bottom">商城管理系统详情</h2>
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
                        <input class="form-control" id="focusedInput" type="text" placeholder="商城管理系统" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">研发团队：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="disabledInput" type="text" placeholder="棒棒棒" disabled>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发负责人：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                        <input class="form-control" id="disabledInput1" type="text" placeholder="王五" disabled>
                    </div>                   
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发成员：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                         <textarea class="form-control" rows="1" placeholder="张三，里斯，李四，豆豆" disabled ></textarea>
                    </div>                   
                </div>
        <fieldset disabled>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目愿景：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput" class="form-control" placeholder="类似淘宝，拼多多购物网站">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目简介：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="电子商务渐接近日常生产生活，越来越多的商家意识到通过网店开展电子商务的重要性，和迫切性。而开设网店，通常有两种途径，一种是在淘宝、阿里巴巴、百度有啊等网站申请使用，其优点是简单易用，搭建快速，缺点是自定义功能不强，在那里开店，只有选择，就好比大超市;
 另一种是选择一个合适的网上商店系统，自己搭建平台，就好比专卖店，没有价格竞争,深受广大用户青睐。
后台功能模块
1、商品管理：包括后台商品库存管理、上货、出货、编辑管理和商品分类管理、商品品牌管理等。
2、订单管理：在线订单程序，使消费者能够顺利的通过WEB在线的方式，直接生成购买订单。
3、商品促销：一般的购物系统多有商品促销功能，通过商品促销功能，能够迅速的促进商城的消费积极性。
4、支付方式：即通过网上钱包、电子支付卡。进行网上资金流转换的业务流程；国内主流支付方式包括：支付宝、财富通、网银在线等。
5、配送方式：购物系统集成的物流配送方式，从而方便消费者对物流方式进行在线选择。如：EMS、顺风等等。
6、会员模块：在购物系统中，集成会员注册是吸引会员进行二次购买和提升转换率最好的方式。
前台功能模块
1、模板风格自定义：即通过系统内置的模板引擎，可以方便的通过后台可视化编辑，设计出符合自身需求的风格界面。
2、商品多图展示：随着电子商务的发展商品图片成为吸引消费者的第一要素，多图展示即提供前台多张图片的展示，从而提升消费者的购物欲望。
3、自定义广告模块：内置在系统中的广告模块，网站管理员能够顺利的通过操作就可以在前端界面中添加各种广告图片。
4、商品展示：通过前端界面，以标准的或者其他个性化的方式向用户展示商品各类信息，完成购物系统内信息流的传递。
5、购物车： 用户可对想要购买的商品进行网上订购，在购物过程中，随时增删商品。" 

                         disabled ></textarea>
                </div>
           </div>
             <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目特点：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="
随着电子商务规模的不断扩大，商品个数和种类快速增长，顾客需要花费大量的时间才能找到自己想买的商品。
普通购物系统为顾客提供相同的商品；智能化购物系统为不同的顾客推荐个性化的商品。智能化购物系统为顾客提供个性化的购物体验，帮助商家提升从浏览者到购买者的转化率，提高交叉销售能力，并最终提高客户忠诚度。
" 

                         disabled ></textarea>
                </div>
           </div>


            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发周期：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput1" class="form-control" placeholder="">
                </div>
            </div>

            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发预算：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput3" class="form-control" placeholder="30000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">已用金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput4" class="form-control" placeholder="26000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">剩余金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput5" class="form-control" placeholder="4000￥">
                </div>
            </div>
            <div class="form-group has-success">
                <label for="inputSuccess" class="col-sm-2 control-label">研发进度：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput6" class="form-control" placeholder="80%">
                </div>
            </div>
           <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">推广负责人：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput7" class="form-control" placeholder="">
                </div>
            </div>
           
        </form>
            </div>
        <%-- 图片 --%>
        <div  id="img">
            <img src="../img/SC.jpg" width="1000px" height="500px" />
            <br />
            <p>商城管理系统参考模板</p>
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
