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
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = AccoutinfoBll.selectall();
            Repeater1.DataBind();
        }
    }
}