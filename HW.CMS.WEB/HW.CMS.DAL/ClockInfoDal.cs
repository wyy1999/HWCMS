using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using System.Data;
using System.Data.SqlClient;

namespace HW.CMS.DAL
{
    public class ClockInfoDal
    {
        public static List<ClockInfo> selectAll()
        {
            List<ClockInfo> list = new List<ClockInfo>();
            string sql = "select * from ClockInfo";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    ClockInfo accout = new ClockInfo()
                    {
                        ClockId = Convert.ToInt32(sqlda["ClockId"]),
                        InfoId = Convert.ToInt32(sqlda["InfoId"]),
                        ClockTime = Convert.ToString(sqlda["ClockTime"]),
                        ClockState = Convert.ToInt32(sqlda["ClockState"]),
                    };
                    list.Add(accout);
                };
            }
            return list;
        }
    }
}
