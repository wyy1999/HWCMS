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
    public partial class ReportInfo : System.Web.UI.Page
    {
        ReportInfoBll bll = new ReportInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.RepList();
            Repeater1.DataBind();

        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ReportInfoBll bll = new ReportInfoBll();
            //获取当前操作按钮的属性和参数
            string comtype = e.CommandName;
            int ReportId = Convert.ToInt32(e.CommandArgument.ToString());
            //如果属性是修改则使用修改方法
            if (comtype == "update")
            {
                Response.Redirect("main.aspx?ReportId=" + ReportId);
            }
            else
            {
                //反之  使用删除方法
                int result = bll.Del_ReportInfo(ReportId);
                //如果大于0则删除成功
                if (result > 0)
                {
                    Response.Write("<script>alert('删除成功');location.href='ReportInfo.aspx'</script>");

                }
                else
                {
                    //反之删除失败
                    Response.Write("<script>alert('删除失败，请重新删除')  </script>");
                }


            }
        }
        /// <summary>
        /// 
        /// 修改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //protected void Button3_Click(object sender, EventArgs e)
        //{
        
        //}

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            ReportInfoModel model = new ReportInfoModel();
            model.ReportTime = Convert.ToString(DateTime.Now);
            model.ReportReason = Txt1.Text;
            model.DepId = Convert.ToInt32(Txt3.Text);
            model.ReportMoney = Convert.ToDecimal(Txt4.Text);
            model.ReportState = Convert.ToInt32(DropDownList1.SelectedValue);
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='ReportInfo.aspx' </script>");

            }
            else
            {

                Response.Write("<script>alert('添加失败！') </script>");
            }
        }

        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
            ReportInfoModel model = new ReportInfoModel();
            model.ReportId = Convert.ToInt32(update_ReportId.Text);
            model.ReportReason = update_ReportReason.Text;
            model.ReportTime = update_ReportTime.Text;
            model.DepId = Convert.ToInt32(update_DepId.Text);
            model.ReportMoney = Convert.ToDecimal(update_ReportMoney.Text);
            model.ReportState = Convert.ToInt32(update_state.SelectedValue);
            if (bll.update_Res(model) >= 0)
            {
                Response.Write("<script>alert('修改成功！');location.href='ReportInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！') </script>");
            }
        }
    }
}