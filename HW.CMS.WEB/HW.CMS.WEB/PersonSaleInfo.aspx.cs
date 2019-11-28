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
    public partial class PersonSaleInfo : System.Web.UI.Page
    {
        PersonSaleInfoBLL bll = new PersonSaleInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.pers();
            Repeater1.DataBind();
        }

     


        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click1(object sender, EventArgs e)
        {
            PersonSaleInfoModel model = new PersonSaleInfoModel();
            model.PerName = TxtInfoId.Text;
           
            model.PerContent = TxtPerContent.Text;
            model.PerMoney = Convert.ToDecimal(TxtPerMoney.Text);
            model.ConMoney = Convert.ToDecimal(TxtConMoney.Text);
           
            if (bll.Add(model) >= 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='PersonSaleInfo.aspx' </script>");

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
            PersonSaleInfoModel model = new PersonSaleInfoModel();
            model.PerId = Convert.ToInt32(update_PerId.Text);
            model.PerName =update_InfoId.Text;
           
            model.PerContent = update_PerContent.Text;
            model.PerMoney = Convert.ToDecimal(update_PerMoney.Text);
            model.ConMoney = Convert.ToDecimal(update_ConMoney.Text);
            if (bll.update(model) >= 0)
            {
                Response.Write("<script>alert('修改成功！');location.href='PersonSaleInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！') </script>");
            }
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            if (bll.delete(id) >= 0)
            {
                Response.Write("<script>alert('删除成功！');location.href='PersonSaleInfo.aspx' </script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败！') </script>");
            }
        }
    }
}