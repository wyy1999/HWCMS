using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class ReportInfo : System.Web.UI.Page
    {
        ReportInfoBll bll = new ReportInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.RepList();
            Repeater1.DataBind();

        }
    }
}