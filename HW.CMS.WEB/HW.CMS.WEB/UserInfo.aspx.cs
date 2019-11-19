using HW.CMS.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW.CMS.WEB
{
    public partial class UserInfo : System.Web.UI.Page
    {
       
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
    }
}