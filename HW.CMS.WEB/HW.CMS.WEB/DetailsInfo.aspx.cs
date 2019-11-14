using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;
using HW.CMS.Model;

namespace HW.CMS.WEB
{
    public partial class DetailsInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsInfoBll bll = new DetailsInfoBll();
            Repeater1.DataSource = bll.DetList();
            Repeater1.DataBind();

            //获取浏览器地址里面的参数
            //根据用户id加载用户信息
            if (!IsPostBack) {

                if (Request.QueryString["ResId"] != null)
                {
                    
                    DetailsInfoModel model = bll.Res_Id(Convert.ToInt32(Request.QueryString["ResId"]));
                  

                }
            } 
            
        }
    }
}