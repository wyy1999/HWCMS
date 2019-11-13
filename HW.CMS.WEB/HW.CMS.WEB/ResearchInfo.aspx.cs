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
            model.ResMoney = Convert.ToDouble(TxtMoney.Text);
            model.ResState = Convert.ToInt32(TxtState.Text);
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='ResearchInfo.aspx' </script>");
               
            }
            else
            {

                Response.Write("<script>alert('添加失败！') </script>");
            }

        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //string comtype = e.CommandName;
            //int ResId = Convert.ToInt32(e.CommandArgument.ToString());
            //if (comtype=="delete")
            //{
            //    int result = bll.delete_Res(ResId);
            //    if (result > 0)
            //    {
            //        Response.Write("<script>alert('删除成功');location.href='ResearchInfo.aspx'</script>");
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('删除失败，请重新删除')  </script>");
            //    }
            //}

        }
    }
}