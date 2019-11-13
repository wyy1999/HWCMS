using HW.CMS.DAL;
using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.BLL
{
    public class ReportInfoBll
    {
        ReportInfoDal dal = new ReportInfoDal();

        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ReportInfo> RepList()
        {
            return dal.RepList();
        }
        public int Del_ReportInfo(int ReportId)
        {
            return dal.Del_ReportInfo(ReportId);
        }
    }
}
