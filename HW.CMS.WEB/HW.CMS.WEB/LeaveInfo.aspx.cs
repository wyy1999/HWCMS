using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class LeaveInfo : System.Web.UI.Page
    {
        LeaveInfoBll bll = new LeaveInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.setAll();
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            int userid = Convert.ToInt32(e.CommandArgument);

            if (name == "update")
            {
                bll.update(userid);
            }
            else
            {
                int result = bll.delete(Convert.ToInt32(userid));
                if (result > 0)
                {
                    Response.Write("<script>alert('删除成功！');location.href='LeaveInfo.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('删除失败！请再删一遍！')</script>");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int dep = Convert.ToInt32(DropDownList1.SelectedValue);
            int state = Convert.ToInt32( RadioButtonList1.SelectedValue);
            Repeater1.DataSource = bll.setAll(dep,state);
            Repeater1.DataBind();
        }
        
    }
}