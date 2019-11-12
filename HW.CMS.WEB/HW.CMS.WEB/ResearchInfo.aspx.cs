using HW.CMS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW.CMS.WEB
{
    /// <summary>
    /// 研发表
    /// </summary>
    /// 
    public partial class ResearchInfo : System.Web.UI.Page
    {
        ResearchInfoBll bll = new ResearchInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.ResList();
            Repeater1.DataBind();
        }
    }
}