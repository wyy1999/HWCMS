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
    public partial class AccoutInfo : System.Web.UI.Page
    {
        AccoutinfoBll bll = new AccoutinfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.selectall();
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            string userid = e.CommandArgument.ToString();

            if (name == "update")
            {
                Response.Redirect("CG_Shop_up.aspx?id=" + userid);
            }
            else
            {
                int result = bll.delete(Convert.ToInt32(userid));
                if (result > 0)
                {
                    Response.Write("<script>alert('删除成功！');location.href='AccoutInfo.aspx'</script>");
                    //Response.Redirect("CG_Shops.aspx");
                }
                else
                {
                    //如果失败，提示信息
                    Response.Write("<script>alert('删除失败！请再删一遍！')</script>");
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            AccoutInfoModel user = new AccoutInfoModel();
            user.ACCSalary = Convert.ToDecimal(TextBox2.Text);
            user.AccSubsidy = Convert.ToDecimal(TextBox3.Text);
            user.AccFiveMoney = Convert.ToDecimal(TextBox4.Text);
            user.ReportId = Convert.ToInt32(TextBox5.Text);

            if (bll.Add(user) > 0)
            {

                Response.Write("<script>alert('添加');location.href='Accoutinfo.aspx';</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            AccoutInfoModel user = new AccoutInfoModel();
            user.AccoutId = Convert.ToInt32(update_AccoutId.Text);
            user.ACCSalary = Convert.ToDecimal(update_ACCSalary.Text);
            user.AccSubsidy = Convert.ToDecimal(update_AccSubsidy.Text);
            user.AccFiveMoney = Convert.ToDecimal(update_AccFiveMoney.Text);
            user.ReportId = Convert.ToInt32(update_ReportId.Text);

            if (bll.update(user) > 0)
            {

                Response.Write("<script>alert('修改');location.href='Accoutinfo.aspx';</script>");
            }

        }
    }
}