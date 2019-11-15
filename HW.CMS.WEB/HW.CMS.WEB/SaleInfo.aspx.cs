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
    public partial class SaleInfo : System.Web.UI.Page
    {
        SaleInfoBLL bll = new SaleInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.SalList();
            Repeater1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SaleInfoModel model = new SaleInfoModel();
            model.GroupName = TxtName.Text;
            model.SaleContent = TxtCon.Text;
            model.SaleMoney = Convert.ToDouble(TxtMoney.Text);
            model.DepId = Convert.ToInt32(TxtDepId.Text);
            int num = 0;
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='SaleInfo.aspx' </script>");

            }
            else
            {

                Response.Write("<script>alert('添加失败！') </script>");
            }
            Session.Add("SaleId",num);


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SaleInfoModel model = new SaleInfoModel();
            model.SaleId = Convert.ToInt32(update_SaleId.Text);
            model.GroupName = update_GroupName.Text;
            model.SaleContent = update_SaleContent.Text;
            model.SaleMoney = Convert.ToDouble(update_SaleMoney.Text);
            model.DepId = Convert.ToInt32(update_DepId.Text);
            if (bll.update(model) >= 0)
            {
                Response.Write("<script>alert('修改成功！');location.href='SaleInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！') </script>");
            }

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            if (bll.delete(id) >= 0)
            {
                Response.Write("<script>alert('删除成功！');location.href='SaleInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败！') </script>");
            }
        }

       
    }
}