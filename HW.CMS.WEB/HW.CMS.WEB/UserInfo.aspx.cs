using HW.CMS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW.CMS.WEB
{
    public partial class UserInfo : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = InfoTableBll.selectAll();
            Repeater1.DataBind();
        }
    }
}