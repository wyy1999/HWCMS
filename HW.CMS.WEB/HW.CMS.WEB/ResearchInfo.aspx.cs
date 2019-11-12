using HW.CMS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.Model;

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

      

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            string p = TxtName.Text;
            ResearchInfoModel model = new ResearchInfoModel();
            model.Resname = TxtName.Text;
            model.ResIntroduce = TxtCon.Text;
            model.BeginTime = TxtBeg.Text;
            model.EndTime = TxtEnd.Text;
            model.ResMoney = Convert.ToDouble(TxtMoney.Text);
            model.ResState = Convert.ToInt32(TxtState.Text);
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！') </script>");
            }
            else
            {

                Response.Write("<script>alert('添加失败！') </script>");
            }

        }
    }
}