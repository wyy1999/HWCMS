using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class ClockInfo : System.Web.UI.Page
    {
        ClockInfoBll bll = new ClockInfoBll();

        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.CloList();
            Repeater1.DataBind();
        }
    }
}