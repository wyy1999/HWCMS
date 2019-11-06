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
    public class InfoTableDal
    {
        public static List<InfoTable> selectAll()
        {
            List<InfoTable> list = new List<InfoTable>();
            string sql = "select * from InfoTable";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    InfoTable accout = new InfoTable()
                    {
                        InfoId = Convert.ToInt32(sqlda["InfoId"]),
                        InfoName = Convert.ToString(sqlda["InfoName"]),
                        InfoAge = Convert.ToInt32(sqlda["InfoAge"]),
                        InfoSex = Convert.ToString(sqlda["InfoSex"]),
                        InfoDate = Convert.ToString(sqlda["InfoDate"]),
                        InfoIdcard = Convert.ToString(sqlda["InfoIdcard"]),
                        InfoTel = Convert.ToString(sqlda["InfoTel"]),
                        InfoAddress = Convert.ToString(sqlda["InfoAddress"]),
                        InfoEmail = Convert.ToString(sqlda["InfoEmail"]),
                        InfoEntrytime = Convert.ToString(sqlda["InfoEntrytime"]),
                        InfoLeavetime = Convert.ToString(sqlda["InfoLeavetime"]),
                        InfoWorkyears = Convert.ToString(sqlda["InfoWorkyears"]),
                        DepId = Convert.ToInt32(sqlda["DepId"]),
                        DutyId = Convert.ToInt32(sqlda["DutyId"]),
                        Userid = Convert.ToInt32(sqlda["Userid"]),
                        InfoSalary = Convert.ToInt32(sqlda["InfoSalary"]),
                        InfoState = Convert.ToInt32(sqlda["InfoState"]),

                    };
                    list.Add(accout);
                };
            }
            return list;
        }
    }
}
