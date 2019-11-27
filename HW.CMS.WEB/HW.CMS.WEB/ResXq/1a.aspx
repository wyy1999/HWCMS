<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1a.aspx.cs" Inherits="HW.CMS.WEB.ResXq.JD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
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
        h2 {

        }

    </style>
</head>
<body>
    <div class="big">
        <div class="content-inner">
                <!-- Page Header-->
                <header class="page-header">
                    <div class="container-fluid">
                        <h2 class="no-margin-bottom"><b>酒店管理系统详情</b></h2>
                        
                    </div>
                </header>

              <br />
        <%-- 信息 --%>
        <div  id="table">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">研发名称：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="focusedInput" type="text" placeholder="酒店管理系统" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">研发团队：</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="disabledInput" type="text" placeholder="七瑾" disabled>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发负责人：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                        <input class="form-control" id="disabledInput1" type="text" placeholder="杨申" disabled>
                    </div>                   
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">研发成员：</label>
                    <div class="col-sm-8">
                        <%--<input class="form-control" id="disabledInput" type="text" placeholder="创新组" disabled>--%>
                         <textarea class="form-control" rows="1" placeholder="谷相博，李彬辉，于发光，代梦丽，顾家瑄" disabled ></textarea>
                    </div>                   
                </div>
        <fieldset disabled>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目愿景：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput" class="form-control" placeholder="提高门店客流量，打造网上一站式订房系统">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目简介：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="七瑾酒店管理致力于让酒店管理更简单，包含前台接待、前台收银、客房管家、销售POS、餐饮管理 、娱乐管理、 公关销售、财务查询、电话计费、系统维护、经理查询、工程维修等功能模块。
快速、简捷的操作：界面直观，操作使用简捷、明快，快速开房只需三分钟；
夜审功能：系统的夜间稽核产生的报表功能完备，为管理层提供决策数据，彻底结束手工报表的历史；
强大的分类统计：系统可按各条件的分类，让销售部及管理层随时可以得知回头客、协议单位的入住情况。
消费排行；单次入住排行和客人入住总排行显示回头客入住情况，可根据具体情况给与客人一定优惠，或赠送会员卡、打折卡，鼓励客人消费；
详尽的房态信息：多达8 种房态，且都有图标相对应，为相关部门提供详尽、明了的房间信息；
订房控制：完善的散客和团体预订功能可防止有房不能出租或满房重订的情况出现，可随时提供准确和最新的房间使用和预订情况，从而可提高客房出租率；
营业收入的自动统计：收入汇总表，使酒店管理层清楚知道各时期客源变化与收入结构变化，及时调整经营方式与策略；
电话控制：电话自动计费及电话开关控制，可杜绝话费的跑账、漏帐，并可防止服务员私打电话；
授权控制：严格控制房价，不同的房价必须有不同的折扣授权，并有房价折扣授权；并可以报表的形式进行监控及查核；
收银入帐的管理：收银入帐均只能红字冲销，不能修改当前记录，符合财务作法；
对电脑权限的管理：各项功能均有严格的权限控制，保证各类数据不被无权过问的人观看和操作。" 

                         disabled ></textarea>
                </div>
           </div>
             <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">项目特点：</label>
                <div class="col-sm-8">
                     <textarea class="form-control" rows="6" 
                         placeholder="（1）资源完全开放型:系统所有的资源,功能交由用户管理,权限控制到按钮,针对不同的用户,组装不同的界面,分配不同的使用功能.不放心再加权限到按钮。
（2）系统突出以营销、预订、房源、房价等对营销具有影响力的信息处理。房价码可按年,季,月,周,日设定。
（3）强化以客源为中心的信息完整性、长久性、可操作性。建立了客档为中心的用户信息管理系统。
（4）使用数据穿透查询技术,对数据进行多元,多层次的查询.从汇中数据到明细发生,紧密联系在一起, 灵活实用。
（5）客档、角色、佣金、房价方案、授权折扣、操作权限到按钮、信息向角色发布…系统既面向应用,又面向管理。
（6）酒店集团管理系统、采集各成员酒店的原始数据、对采集来的数据进行分类、汇总、分析等处理、形成管理决策所需的数据信息、产生各种分析报表。
（7）界面美观大方、操作方便。
（8）系统稳定、适应性强、操作灵活。" 

                         disabled ></textarea>
                </div>
           </div>


            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发周期：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput1" class="form-control" placeholder="14个月">
                </div>
            </div>

            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">研发预算：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput3" class="form-control" placeholder="40000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">已用金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput4" class="form-control" placeholder="38000￥">
                </div>
            </div>
            <div class="form-group">
                <label for="disabledTextInput" class="col-sm-2 control-label">剩余金额：</label>
                <div class="col-sm-8">
                    <input type="text" id="disabledTextInput5" class="form-control" placeholder="2000￥">
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
            <%--<div class="form-group">
                <label for="disabledSelect" class="col-sm-2 control-label">禁用选择菜单（Fieldset disabled）</label>
                <div class="col-sm-8">
                    <select id="disabledSelect" class="form-control">
                        <option>禁止选择</option>
                    </select>
                </div>
            </div>
        </fieldset>
        <div class="form-group has-success">
            <label class="col-sm-2 control-label" for="inputSuccess">输入成功</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputSuccess">
            </div>
        </div>
        <div class="form-group has-warning">
            <label class="col-sm-2 control-label" for="inputWarning">输入警告</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputWarning">
            </div>
        </div>
        <div class="form-group has-error">
            <label class="col-sm-2 control-label" for="inputError">输入错误</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputError">
            </div>
        </div>--%>
        </form>
            </div>
        <%-- 图片 --%>
        <div  id="img">
            <img src="../img/JD.png" width="1000px" height="600px" />
            <br />
            <br />
            <p>七瑾酒店管理系统</p>
        </div>

    
    </div>
</body>
</html>
