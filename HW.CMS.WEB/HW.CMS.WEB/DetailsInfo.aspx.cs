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
        DetailsInfoBll bll = new DetailsInfoBll();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.DetList();
            Repeater1.DataBind();
            //获取浏览器地址里面的参数
            //根据用户id加载用户信息
            if (!IsPostBack)
            {

                if (Request.QueryString["ResId"] != null)
                {

                    Repeater1.DataSource = bll.DetList(Convert.ToInt32(Request.QueryString["ResId"]));
                    Repeater1.DataBind();

                }

            }

        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DetailsInfoModel model = new DetailsInfoModel();
            model.InfoId = Convert.ToInt32(TxtName.Text) ;
            model.AllMoney =Convert.ToDecimal(TxtAll.Text) ;
            model.UseMoney = Convert.ToDecimal(TxtUse.Text) ;
            model.OverMoney = Convert.ToDecimal( TxtOver.Text);
            model.DetPlan = TxtPlan.Text;
            model.ResId = Convert.ToInt32(TxtResId.Text);
            
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='DetailsInfo.aspx' </script>");

            }
            else
            {

                Response.Write("<script>alert('添加失败！') </script>");
            }          
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument.ToString());
            if (bll.delete_Det(id) >= 0)
            {
                Response.Write("<script>alert('删除成功！');location.href='DetailsInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败！') </script>");
            }
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
            DetailsInfoModel model = new DetailsInfoModel();
            model.ResId = Convert.ToInt32(update_ResId.Text);
            model.InfoId = Convert.ToInt32(update_InfoId.Text) ;
            model.AllMoney =Convert.ToDecimal(update_AllMoney.Text) ;
            model.DetId = Convert.ToInt32(update_DetId.Text);
            model.DetPlan = update_DetPlan.Text;
            model.OverMoney = Convert.ToDecimal(update_OverMoney.Text);
            model.UseMoney = Convert.ToDecimal(update_UseMoney.Text);

            if (bll.update_Det(model) > 0)
            {
                Response.Write("<script>alert('修改成功！');location.href='DetailsInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！') </script>");
            }
        }
    }
}