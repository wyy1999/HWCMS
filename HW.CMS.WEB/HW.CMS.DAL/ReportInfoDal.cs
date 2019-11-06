using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using HW.CMS.Model;

namespace HW.CMS.DAL
{
    public class ReportInfoDal
    {
        public static List<ReportInfo> selectAll()
        {
            List<ReportInfo> list = new List<ReportInfo>();
            string sql = "select * from ReportInfo";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    ReportInfo accout = new ReportInfo()
                    {
                        ReportId = Convert.ToInt32(sqlda["ReportId"]),
                        ReportReason = Convert.ToString(sqlda["ReportReason"]),
                        ReportTime = Convert.ToString(sqlda["ReportTime"]),
                        DepId = Convert.ToInt32(sqlda["DepId"]),
                        ReportMoney = Convert.ToDouble(sqlda["ReportMoney"]),
                        ReportState = Convert.ToInt32(sqlda["ReportState"])
                    };
                    list.Add(accout);
                };
            }
            return list;
        }
    }
}
