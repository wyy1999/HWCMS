using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class leave : System.Web.UI.Page
    {
        UserBll bll = new UserBll();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(TextBox1.Text);
            int tid = Convert.ToInt32(DropDownList2.SelectedValue);
            string beca = TextBox3.Text;
            string time = date.Text;
            if (bll.insert_leave(uid, tid, beca,time) > 0)
            {
                Response.Write("<script>alert('申请成功');</script>");
            }

        }
    }
}