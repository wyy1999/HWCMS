using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HW.CMS.BLL;

namespace HW.CMS.WEB
{
    public partial class indexinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InfoTableBll bll = new InfoTableBll();
            AccoutinfoBll abll = new AccoutinfoBll();
            Label1.Text = Convert.ToString(bll.sel1());
            Label2.Text = Convert.ToString(bll.sel2());
            Label3.Text = Convert.ToString(bll.sel3());
            Label4.Text = Convert.ToString(bll.sel4());
            Label5.Text = Convert.ToString(bll.sel5());
            
            Label81.Text = Convert.ToString(abll.sel1().AccMoney);
            Label82.Text = Convert.ToString(abll.sel1().ACCSalary);
            Label83.Text = Convert.ToString(abll.sel1().AccReportModey);
            Label84.Text = Convert.ToString(abll.sel1().AccResMoney);

            Label91.Text = Convert.ToString(abll.sel2().AccMoney);
            Label92.Text = Convert.ToString(abll.sel2().ACCSalary);
            Label93.Text = Convert.ToString(abll.sel2().AccReportModey);
            Label94.Text = Convert.ToString(abll.sel2().AccResMoney);

            Label15.Text = Convert.ToString(abll.sel3().AccMoney);
            Label10.Text = Convert.ToString(abll.sel3().ACCSalary);
            Label11.Text = Convert.ToString(abll.sel3().AccReportModey);
            Label12.Text = Convert.ToString(abll.sel3().AccResMoney);

            Label21.Text = Convert.ToString(abll.sel4().AccMoney);
            Label22.Text = Convert.ToString(abll.sel4().ACCSalary);
            Label23.Text = Convert.ToString(abll.sel4().AccReportModey);
            Label24.Text = Convert.ToString(abll.sel4().AccResMoney);
        }
    }
}