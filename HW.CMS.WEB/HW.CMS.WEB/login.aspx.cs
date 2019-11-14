using HW.CMS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.Model;

namespace HW.CMS.WEB
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 获取用户名和密码
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            //6.处理结果
            //如果没有找到用户，我提示一下
            UserBll bll = new UserBll();
            UserLogin result = bll.LoginIn(username, password);
            Response.Write("<script>alert('"+result.UserRole+"')</script>");
            if (result.UserRole!=0)
            {
                if (result.UserRole == 1)
                {
                    Session["chuan"] = result.UserNum;
                    Response.Redirect("InfoTable.aspx");
                }
                else if(result.UserRole==2)
                {
                    Response.Redirect("AccoutInfo.aspx");
                }
                else { 
                //Session.Add("Userid", num);
                Response.Redirect("index.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误，请重新输入！')</script>");

            }

        }

        /// <summary>
        /// 登录按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    //获取用户名和密码
        //    string username = .Text;
        //    string password = .Text;
        //    //6.处理结果
        //    //如果没有找到用户，我提示一下
        //    UserBll bll = new UserBll();
        //    object result = bll.LoginIn(username, password);
        //    int num = Convert.ToInt32(result);
        //    if (result == null)
        //    {
        //        label.Text = "用户名密码错误，请重新输入！";
        //    }
        //    else
        //    {
        //        Session.Add("Userid", num);
        //        Response.Redirect("index.aspx");
        //    }

        //}
    }
}