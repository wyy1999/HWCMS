<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexinfo.aspx.cs" Inherits="HW.CMS.WEB.indexinfo" %>

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
    <script src="js/Echarts.js"></script>

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
                        <h2 class="no-margin-bottom">首页</h2>
                    </div>
                </header>

                <!-- Charts Section-->
                <section class="charts">
                    <div class="container-fluid">
                        <div class="row">
                            <!-- Line Charts-->
                            <div class="col-lg-6">
                                <div class="line-chart-example card"">
                                    <div class="card-close">
                                        <div class="dropdown">
                                            <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                            <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"><i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>管理</a></div>
                                        </div>
                                    </div>
                                    <div class="card-header d-flex align-items-center">
                                        <h3 class="h4">人数详情</h3>
                                    </div>
                                    <%--<div id="main" class="card-body">
                                    </div>--%>
                                    <div id="main" style="width: 770px; height: 800px">
                                    </div>
                                </div>
                            </div>
                              <div class="col-lg-6">
                                <div class="line-chart-example card"">
                                    <div class="card-close">
                                        <div class="dropdown">
                                            <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                            <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"><i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>管理</a></div>
                                        </div>
                                    </div>
                                    <div class="card-header d-flex align-items-center">
                                        <h3 class="h4">财务支出</h3>
                                    </div>
                                    <div id="admin" style="width: 770px; height: 800px">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4" style="display:none">
                                <div class="line-chart-example card no-margin-bottom">
                                    <div class="card-close">
                                        <div class="dropdown">
                                            <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                            <div aria-labelledby="closeCard2" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"><i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>管理</a></div>
                                        </div>
                                    </div>
                                    <div class="card-header d-flex align-items-center">
                                        <h3 class="h4">员工人数</h3>
                                    </div>
                                    <div class="card-body">
                                        人事部：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        财务部：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        研发部：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        销售部：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        总人数：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>                                        人事部：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        <br />
                                       8月 财务人员名称：<asp:Label ID="Label81" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        工资总金额：<asp:Label ID="Label82" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        报备总金额：<asp:Label ID="Label83" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        研发总金额：<asp:Label ID="Label84" runat="server" Text="Label"></asp:Label>
                                          9月 财务人员名称：<asp:Label ID="Label91" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        工资总金额：<asp:Label ID="Label92" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        报备总金额：<asp:Label ID="Label93" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        研发总金额：<asp:Label ID="Label94" runat="server" Text="Label"></asp:Label>
                                        <br />
                                 10月 财务人员名称：<asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        工资总金额：<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        报备总金额：<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        研发总金额：<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                          11月 财务人员名称：<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        工资总金额：<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        报备总金额：<asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        研发总金额：<asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                                    </div>

                                </div>

                            </div>
                        </div>
                </section>
                <!-- Page Footer-->

            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"> </script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="js/charts-custom.js"></script>
        <!-- Main File-->
        <script src="js/front.js"></script>

    </form>
    <script>
        $(function () {
            var myChart = echarts.init(document.getElementById('main'));
            var admin = echarts.init(document.getElementById('admin'));
            var tt1 = $("#Label81").text();
            var tt2 = $("#Label82").text();
            var tt3 = $("#Label83").text();
            var tt4 = $("#Label84").text();
            var ta1 = $("#Label91").text();
            var ta2 = $("#Label92").text();
            var ta3 = $("#Label93").text();
            var ta4 = $("#Label94").text();
            var tq1 = $("#Label15").text();
            var tq2 = $("#Label10").text();
            var tq3 = $("#Label11").text();
            var tq4 = $("#Label12").text();
            var tw1 = $("#Label21").text();
            var tw2 = $("#Label22").text();
            var tw3 = $("#Label23").text();
            var tw4 = $("#Label24").text();
             option = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                legend: {
                    data: ['工资总金额', '报备总金额', '研发总金额', '总收入']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: [
                    {
                        type: 'category',
                        data: ['8月', '9月', '10月', '11月']
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                series: [
                    {
                        name: '工资总金额',
                        type: 'bar',
                        stack: '支出',
                        data: [tt2, ta2, tq2, tw2]
                    },
                    {
                        name: '报备总金额',
                        type: 'bar',
                        stack: '支出',
                        data: [tt3, ta3, tq3, tt3]
                    },
                    {
                        name: '研发总金额',
                        type: 'bar',
                        stack: '支出',
                        data: [tt4, ta4, tq4, tw4]
                    },

                    {
                        name: '总收入',
                        type: 'bar',
                        data: [tt1, ta1, tq1, tw1],

                        markLine: {
                            lineStyle: {
                                normal: {
                                    type: 'dashed'
                                }
                            },
                            data: [
                                [{ type: 'min' }, { type: 'max' }]
                            ]
                        }
                    },

                ]
            };
            
            admin.setOption(option);
            var t1 = $("#Label1").text();
            var t2 = $("#Label2").text();
            var t3 = $("#Label3").text();
            var t4 = $("#Label4").text();
            var colorArr = ["#218de0", "#01cbb3", "#85e647", "#5d5cda", "#05c5b0", "#c29927"];
            var colorAlpha = ['rgba(60,170,211,0.05)', 'rgba(1,203,179,0.05)', 'rgba(133,230,71,0.05)', 'rgba(93,92,218,0.05)', 'rgba(5,197,176,0.05)', 'rgba(194,153,39,0.05)']
            option = {
                backgroundColor: "#090e36",
                grid: {
                    left: -100,
                    top: 50,
                    bottom: 10,
                    right: 10,
                    containLabel: true
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{b} : {c}人 ({d}%)"
                },
                legend: {
                    show: false
                },

                polar: {},
                angleAxis: {
                    interval: 1,
                    type: 'category',
                    data: [],
                    z: 10,
                    axisLine: {
                        show: false,
                        lineStyle: {
                            color: "#0B4A6B",
                            width: 1,
                            type: "solid"
                        },
                    },
                    axisLabel: {
                        interval: 0,
                        show: true,
                        color: "#0B4A6B",
                        margin: 8,
                        fontSize: 16
                    },
                },
                radiusAxis: {
                    min: 20,
                    max: 120,
                    interval: 20,
                    axisLine: {
                        show: false,
                        lineStyle: {
                            color: "#0B3E5E",
                            width: 1,
                            type: "solid"
                        },
                    },
                    axisLabel: {
                        formatter: '{value} %',
                        show: false,
                        padding: [0, 0, 20, 0],
                        color: "#0B3E5E",
                        fontSize: 16
                    },
                    splitLine: {
                        lineStyle: {
                            color: "#07385e",
                            width: 2,
                            type: "dashed"
                        }
                    }
                },
                calculable: true,
                series: [{
                    stack: 'a',
                    type: 'pie',
                    radius: '80%',
                    roseType: 'radius',
                    zlevel: 10,
                    startAngle: 100,
                    label: {
                        normal: {
                            formatter: ['{b|{b}}', '{d|{d}%}'].join('\n'),
                            rich: {
                                b: {
                                    color: '#3bd2fe',
                                    fontSize: 14,
                                    lineHeight: 20
                                },
                                d: {
                                    color: '#d0fffc',
                                    fontSize: 14,
                                    height: 20
                                },
                            },
                        }
                    },
                    labelLine: {
                        normal: {
                            show: true,
                            length: 10,
                            length2: 45,
                            lineStyle: {
                                color: '#0096b1'

                            }
                        },
                        emphasis: {
                            show: false
                        }
                    },
                    data: [{
                        value: t3,
                        name: '研发部',
                        itemStyle: {
                            borderColor: colorArr[0],
                            borderWidth: 2,
                            shadowBlur: 20,
                            shadowColor: "#41a8f8",
                            shadowOffsetx: 25,
                            shadowOffsety: 20,
                            color: colorAlpha[0]
                        }
                    },
                    {
                        value: t4,
                        name: '销售部',
                        itemStyle: {
                            borderColor: colorArr[1],
                            borderWidth: 2,
                            shadowBlur: 20,
                            shadowColor: colorArr[1],
                            shadowOffsetx: 25,
                            shadowOffsety: 20,
                            color: colorAlpha[1]
                        }
                    },
                    {
                        value: t2,
                        name: '财务部',
                        itemStyle: {
                            borderColor: colorArr[2],
                            borderWidth: 2,
                            shadowBlur: 20,
                            shadowColor: colorArr[2],
                            shadowOffsetx: 25,
                            shadowOffsety: 20,
                            color: colorAlpha[2]
                        }
                    },
                    {
                        value: t1,
                        name: '人事部',
                        itemStyle: {
                            borderColor: colorArr[3],
                            borderWidth: 2,
                            shadowBlur: 20,
                            shadowColor: colorArr[3],
                            shadowOffsetx: 25,
                            shadowOffsety: 20,
                            color: colorAlpha[3]
                        }
                    },


                    ]
                },]
            }
            myChart.setOption(option);
        })
    </script>
</body>
</html>
