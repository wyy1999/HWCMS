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
            
            string p = TxtMoney.Text;
            ResearchInfoModel model = new ResearchInfoModel();
            model.Resname = TxtName.Text;
            model.ResIntroduce = TxtCon.Text;
            model.BeginTime =Convert.ToString(DateTime.Now) ;
            model.EndTime = "";           
            model.ResMoney = Convert.ToDecimal(TxtMoney.Text);
            model.ResState = Convert.ToInt32(DropDownList1.SelectedValue);
            int num = 0;
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='ResearchInfo.aspx' </script>");
               
            }
            else
            {

                Response.Write("<script>alert('添加失败！') </script>");
            }
            Session.Add("ResId",num);
        }

        /// <summary>
        /// 详情
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string comtype = e.CommandName;
            int ResId = Convert.ToInt32(e.CommandArgument.ToString());
            if (comtype != "update")
            {
                Response.Redirect("DetailsInfo.aspx?ResId=" + ResId);
            }

        }

        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
            ResearchInfoModel model = new ResearchInfoModel();
            model.ResId = Convert.ToInt32(update_ResId.Text);
            model.ResIntroduce = update_ResIntroduce.Text;
            model.Resname = update_Resname.Text;
            model.BeginTime = update_BeginTime.Text;
            model.EndTime = update_EndTime.Text;
            model.ResMoney = Convert.ToDecimal(update_ResMoney.Text) ;
            model.ResState =Convert.ToInt32(update_state.SelectedValue) ;
            if (bll.update_Res(model) >= 0)
            {
                Response.Write("<script>alert('修改成功！');location.href='ResearchInfo.aspx' </script>");
            }
            else {
                Response.Write("<script>alert('修改失败！') </script>");
            }
        }
    }
}