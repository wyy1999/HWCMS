using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.DAL
{
    public class ReportInfoDal
    {
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ReportInfo> RepList()
        {
            string sql = "select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<ReportInfo> list = new List<ReportInfo>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    ReportInfo model = new ReportInfo();
                    model.Dep = reader["Dep"].ToString();
                    //model.ReportId = int.Parse(reader["ReportId"].ToString());
                    model.ReportMoney =int.Parse(reader["ReportMoney"].ToString()) ;
                    model.ReportTime = DateTime.Parse(reader["ReportTime"].ToString()) ;
                    model.ReportReason = reader["ReportReason"].ToString();
                              
                    model.ReportState = int.Parse(reader["ReportState"].ToString());

                    list.Add(model);
                }
            }
            return list;
        }
    }
}
