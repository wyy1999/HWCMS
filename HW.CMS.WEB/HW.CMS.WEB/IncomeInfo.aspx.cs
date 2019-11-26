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
    public partial class IncomeInfo : System.Web.UI.Page
    {
        IncomeInfoBll bll = new IncomeInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.setAll();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            IncomeInfoModel user = new IncomeInfoModel();
            user.IncomMoney = Convert.ToDecimal(TextBox1.Text);
            user.IncomForm =TextBox2.Text;
            if (bll.Add(user) > 0)
            {

                Response.Write("<script>alert('添加');location.href='IncomeInfo.aspx';</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            IncomeInfoModel user = new IncomeInfoModel();
            user.IncomeId = Convert.ToInt32(update_IncomeId.Text);
            user.IncomMoney = Convert.ToDecimal(update_IncomMoney.Text);
            user.IncomForm = update_IncomForm.Text;
            if (bll.update(user) > 0)
            {

                Response.Write("<script>alert('修改');location.href='IncomeInfo.aspx';</script>");
            }
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
                    Response.Write("<script>alert('删除成功！');location.href='IncomeInfo.aspx'</script>");
                    //Response.Redirect("CG_Shops.aspx");
                }
                else
                {
                    //如果失败，提示信息
                    Response.Write("<script>alert('删除失败！请再删一遍！')</script>");
                }
            }
        }
    }
}