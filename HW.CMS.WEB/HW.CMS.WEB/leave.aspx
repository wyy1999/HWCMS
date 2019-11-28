<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="HW.CMS.WEB.leave" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/dateTime.css" rel="stylesheet" />
    <style>
        .mycontainer input {
            border: 1px solid #ccc;
            padding: 6px 10px;
        }
    </style>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/fontastic.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700" />
    <link href="css/style.default.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />


    <%--  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  --%>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .table {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
           
        }

            table td, table th {
                border: 1px solid #cad9ea;
                color: #666;
                height: 30px;
            }

            table thead th {
                background-color: #CCE8EB;
                width: 100px;
            }

            table tr:nth-child(odd) {
                background: #fff;
            }

            table tr:nth-child(even) {
                background: #F5FAFA;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
                <div class="content-inner">
                    <!-- Page Header-->
                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">员工请假</h2>
                        </div>
                    </header>
                    <!-- Breadcrumb-->
                    <div class="breadcrumb-holder container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">请输入信息</li>
                        </ul>
                    </div>

                    <div>
                        <table  class="table">
                            <tr>
                                <td >员工id</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>员工姓名</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"  class="form-control" ></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>部门</td>
                                <td>
                                   <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" >
                                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                                <asp:ListItem Value="1">人事部</asp:ListItem>
                                                <asp:ListItem Value="2">财务部</asp:ListItem>
                                                <asp:ListItem Value="3">研发部</asp:ListItem>
                                                <asp:ListItem Value="4">销售部</asp:ListItem>
                                            </asp:DropDownList>
                                   <%-- <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>--%>

                                </td>
                            </tr>
                            <tr>
                                <td>请假原因</td>
                                <td>

                                  <%--  <textarea id="reson" rows="3" class="form-control" placeholder="请输入请假原因"></textarea>--%>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="MultiLine" placeholder="请输入请假原因" Height="100px" ></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>请假结束时间</td>
                                <td>
                                    <div class="mycontainer">
                                        <asp:TextBox  ID="date" runat="server" class="form-control" placeholder="请选择日期" style="width:400px;font-size:18px;" TextMode="DateTime"></asp:TextBox>

	</div>
	<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="js/dateTime.min.js"></script>
	<script>
		$("#date").datetime({
			type:"date",
			value:[2019,9,31],
			success:function(res){
				console.log(res)
			}
        })
	</script>

	<script>
		window.onload=function(){
			var totleTp = 0;
			var tppiao = document.getElementsByClassName("tppiao");
			for(var i=0;i<tppiao.length;i++){totleTp+=parseInt(tppiao[i].innerHTML);}
			var tpdetial = document.getElementsByClassName("tpdetial");
			for(var i=0;i<tpdetial.length;i++){var mun = parseInt(tpdetial[i].getElementsByClassName("tppiao")[0].innerHTML);var bfb = (mun*100/totleTp).toFixed(2)+"%";tpdetial[i].getElementsByClassName("tppercent")[0].innerHTML = bfb;
			}
		}
		if(window.location.href.indexOf("udsid=")>-1){
			$("#ctlNext").on("click",function(){
				console.log("执行成功！")
				meteor.track("form", {convert_id: "1641358861914125"})
			})
		}
	</script>

                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="提交" OnClick="Button1_Click" /></td>
                            </tr>
                            
                        </table>

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
</html>
