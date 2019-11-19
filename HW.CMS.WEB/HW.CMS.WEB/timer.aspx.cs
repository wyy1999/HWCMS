using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;
using HW.CMS.Model;

namespace HW.CMS.WEB
{
    public partial class timer : System.Web.UI.Page
    {
        ClockInfoBll ClockInfoBll = new ClockInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int a = Convert.ToInt32(DateTime.Now.Hour);
                if (a > 12)
                {
                    Button1.Enabled = false;
                    Button2.Enabled = true;
                }
                else
                {

                    Button1.Enabled = true;
                    Button2.Enabled = false;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int s = Convert.ToInt32(TextBox1.Text);
            if(ClockInfoBll.inserts(s)>0)
            {
                Response.Write("<script>alert('签到成功');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int s = Convert.ToInt32(TextBox1.Text);
            if (ClockInfoBll.inserts(s) > 0)
            {
                Response.Write("<script>alert('签到成功');</script>");
            }
        }
    }
}