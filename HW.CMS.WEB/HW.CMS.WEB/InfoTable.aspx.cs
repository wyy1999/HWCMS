using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.Model;
using HW.CMS.BLL;


namespace HW.CMS.WEB
{
    public partial class InfoTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = UserLoginBll.selectAll();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tex1 = TextBox1.Text;
            string tex2 = TextBox2.Text;
            string tex3 = TextBox3.Text;
            UserLogin user = new UserLogin();
            user.UserNum = Convert.ToInt32(tex1);
            user.Userpwd = tex2;
            user.UserRole = Convert.ToInt32(tex3);
            if (UserLoginBll.insert(user) > 0)
            {
                Response.Write("<script>alert('添加成功');</script>");
                Response.Redirect("InfoTable.aspx");
            }
        }


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