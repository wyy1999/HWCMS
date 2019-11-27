using HW.CMS.DAL;
using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
        public List<ReportInfoModel> RepList(string RepName = "", int ReportState = 0)
        {
            return dal.RepList(RepName, ReportState);
        }
        public int Del_ReportInfo(int ReportId)
        {
            return dal.Del_ReportInfo(ReportId);
        }
        public int update_Res(int ReportId)
        {
            return dal.update_Res(ReportId);
        }

        public int Add(ReportInfoModel model)
        {
            return dal.Add(model);
        }
    }
}
