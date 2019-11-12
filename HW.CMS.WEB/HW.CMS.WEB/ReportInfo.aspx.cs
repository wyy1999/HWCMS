using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

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

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //ReportInfoBll bll = new ReportInfoBll();
            ////获取当前操作按钮的属性和参数
            //string comtype = e.CommandName;
            //int ReportId = Convert.ToInt32(e.CommandArgument.ToString());
            ////如果属性是修改则使用修改方法
            //if (comtype == "update")
            //{
            //    Response.Redirect("main.aspx?ReportId=" + ReportId);
            //}
            //else
            //{
            //    //反之  使用删除方法
            //    int result = bll.delete_ReportInfo(ReportId);
            //    //如果大于0则删除成功
            //    if (result > 0)
            //    {
            //        Response.Write("<script>alert('删除成功');location.href='ReportInfo.aspx'</script>");

            //    }
            //    else
            //    {
            //        //反之删除失败
            //        Response.Write("<script>alert('删除失败，请重新删除')  </script>");
            //    }


            //}
        }
    }
}