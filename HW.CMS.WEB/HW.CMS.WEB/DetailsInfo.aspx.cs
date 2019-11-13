using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class DetailsInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsInfoBll bll = new DetailsInfoBll();
            Repeater1.DataSource = bll.DetList();
            Repeater1.DataBind();
        }
    }
}