﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;
namespace HW.CMS.WEB
{
    public partial class SaleInfo : System.Web.UI.Page
    {
        SaleInfoBLL bll = new SaleInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.SalList();
            Repeater1.DataBind();
        }
    }
}