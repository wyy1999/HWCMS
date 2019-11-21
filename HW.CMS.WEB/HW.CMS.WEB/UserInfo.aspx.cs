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
    public partial class UserInfo : System.Web.UI.Page
    {
        InfoTableBll bll = new InfoTableBll();
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = InfoTableBll.selectAll();
            Repeater1.DataBind();
        }

        /// <summary>
        /// 查询
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TxtInfoName.Text;
            int Depid =Convert.ToInt32(DropDep.SelectedValue) ;
            int Dtuyid = Convert.ToInt32(DropDutyName.SelectedValue);
            int InfoState = Convert.ToInt32(RadioState.SelectedValue);
            string sex;
            if (Sex.SelectedValue == "全部")
            {
                sex = "";
            }
            else
            {
                 sex = Sex.SelectedValue;
            }
           
            Repeater1.DataSource = InfoTableBll.selectAll(name,Depid,Dtuyid,sex);
            Repeater1.DataBind();
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            HW.CMS.Model.InfoTable info = new Model.InfoTable();
            info.InfoName = TxtName.Text;
            info.InfoAge =Convert.ToInt32(Txtage.Text) ;
            info.InfoSex = Radsex.SelectedValue;
            info.InfoDate = Txtdate.Text;
            info.InfoIdcard = txtidcard.Text;
            info.InfoTel = txttel.Text;
            info.InfoAddress = txtaddress.Text;
            info.InfoEmail = txtemali.Text;
            info.InfoEntrytime = txttime.Text;
            info.InfoLeavetime = txttime1.Text;
            info.InfoWorkyears = txtyears.Text;
            info.DepId =Convert.ToInt32(Dropdep1.SelectedValue);
            info.DutyId =Convert.ToInt32(Dropduty.SelectedValue) ;
            info.Userid = Convert.ToInt32(txtuser.Text);
            info.InfoSalary = Convert.ToDecimal(txtmoney1.Text);
            info.InfoState = Convert.ToInt32(DropState.SelectedValue);
            if (bll.Add(info) > 0)
            {
                Response.Write("<script>alert('添加成功！');location.href='UserInfo.aspx' </script>");

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
            HW.CMS.Model.InfoTable info = new Model.InfoTable();
            info.InfoName = update_InfoName.Text;
            info.InfoAge = Convert.ToInt32(update_InfoAge.Text);
            info.InfoSex = update_InfoSex.SelectedValue;
            info.InfoDate = update_InfoDate.Text;
            info.InfoIdcard = update_InfoIdcard.Text;
            info.InfoTel = update_InfoTel.Text;
            info.InfoAddress = update_InfoAddress.Text;
            info.InfoEmail = update_InfoEmail.Text;
            info.InfoEntrytime = update_InfoEntrytime.Text;
            info.InfoLeavetime = update_InfoLeavetime.Text;
            info.InfoWorkyears = update_InfoWorkyears.Text;
            info.DepId = Convert.ToInt32(update_DepId.SelectedValue);
            info.DutyId = Convert.ToInt32(update_DutyId.SelectedValue);
            info.Userid = Convert.ToInt32(update_Userid.Text);
            info.InfoSalary = Convert.ToDecimal(update_InfoSalary.Text);
            info.InfoState = Convert.ToInt32(update_InfoState.SelectedValue);
            info.InfoId = Convert.ToInt32(update_InfoId.Text);
            if (bll.update_Info(info) > 0)
            {
                Response.Write("<script>alert('修改成功！');location.href='UserInfo.aspx' </script>");

            }
            else
            {

                Response.Write("<script>alert('修改失败！') </script>");
            }

        }
    }
}