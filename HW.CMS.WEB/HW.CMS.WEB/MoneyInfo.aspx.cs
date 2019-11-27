using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class MoneyInfo : System.Web.UI.Page
    {
        MoneyInfoBll bll = new MoneyInfoBll();
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string InfoName = TextBox1.Text;
            int MoneyState = Convert.ToInt32(RadioButtonList1.SelectedValue);
            int Moneysta = Convert.ToInt32(RadioButtonList2.SelectedValue);
            Repeater1.DataSource = bll.setAll(InfoName,MoneyState, Moneysta);
            Repeater1.DataBind();
        }
    }
}