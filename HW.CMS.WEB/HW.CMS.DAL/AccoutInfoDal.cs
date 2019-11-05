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
    public class AccoutInfoDal
    {
        public static List<AccoutInfoModel> selectAll()
        {
            List<AccoutInfoModel> list = new List<AccoutInfoModel>();
            string sql = "select * from AccoutInfo";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    AccoutInfoModel accout = new AccoutInfoModel()
                    {
                        AccoutId = Convert.ToInt32(sqlda["AccoutId"]),
                        InfoId = Convert.ToInt32(sqlda["InfoId"]),
                        AccSubsidy = Convert.ToDouble(sqlda["AccSubsidy"]),
                        AccFiveMoney =Convert.ToDouble(sqlda["AccFiveMoney"]) ,
                        ReportId = Convert.ToInt32(sqlda["ReportId"])
                    };
                    list.Add(accout);
                };
            }
            return list;
        }
    }
}
