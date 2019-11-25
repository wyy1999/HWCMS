using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.Model;
using HW.CMS.BLL;
using System.Data;


namespace HW.CMS.WEB
{
    public partial class InfoTable : System.Web.UI.Page
    {
        UserBll bll = new UserBll();

        public object InfoId { get; internal set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //string user =Convert.ToString(Session["chuan"]);
            //TextBox4.Text = user;
            Repeater1.DataSource = UserLoginBll.selectAll();
            Repeater1.DataBind();
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string tex1 = TextBox1.Text;
        //    string tex2 = TextBox2.Text;
        //    string tex3 = TextBox3.Text;
        //    UserLogin user = new UserLogin();
        //    user.UserNum = Convert.ToInt32(tex1);
        //    user.Userpwd = tex2;
        //    user.UserRole = Convert.ToInt32(tex3);
        //    if (UserLoginBll.insert(user) > 0)
        //    {
        //        Response.Write("<script>alert('添加成功');</script>");
        //        Response.Redirect("InfoTable.aspx");
        //    }
        //}

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument);
            if (name == "update")
            {
                Response.Write("<script>alert('12');</script>");
            }
            else
            {
                int num = bll.delete(id);
                if (num > 0)
                {
                    //Response.Redirect("InfoTable.aspx");
                   
                    Response.Write("<script>alert('删除成功');location.href='InfoTable.aspx';</script>");

                }
                else
                {
                    Response.Write("<script>alert('删除失败');</script>");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserLogin user = new UserLogin();
            user.UserNum = Convert.ToInt32(TextBox1.Text);
            user.Userpwd = TextBox2.Text;
            user.DutyId = Convert.ToInt32(TextBox3.Text);

            if (UserLoginBll.insert(user) > 0)
            {

                Response.Write("<script>alert('添加');location.href='InfoTable.aspx';</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            UserLogin user = new UserLogin();
            user.Userid = Convert.ToInt32(update_Userid.Text);
            user.UserNum = Convert.ToInt32(update_UserNum.Text);
            user.Userpwd = update_Userpwd.Text;
            user.DutyId = Convert.ToInt32(update_UserRole.Text);

            if (bll.update(user) > 0)
            {

                Response.Write("<script>alert('修改成功');location.href='InfoTable.aspx';</script>");
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Write("<script>alert('修改失败');</script>");
        //}


        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string tex1 = TextBox1.Text;
        //    string tex2 = TextBox2.Text;
        //    string tex3 = TextBox3.Text;
        //    UserLogin user = new UserLogin();
        //    user.UserNum =Convert.ToInt32( tex1);
        //    user.Userpwd = tex2;
        //    user.UserRole = Convert.ToInt32(tex3);
        //    if(UserLoginBll.insert(user) > 0)
        //    {
        //        Response.Write("<script>alert('添加成功');</script>");
        //    }
        //       }
    }
}