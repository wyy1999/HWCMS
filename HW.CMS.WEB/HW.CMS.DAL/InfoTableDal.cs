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
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public static List<InfoTable> selectAll(string InfoName="",int DepId=0,int DutyId=0)
        {
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                    new SqlParameter("@InfoName",InfoName),
                    new SqlParameter("@DepId",DepId),
                    new SqlParameter("@DutyId",DutyId),

            };
            DataTable table = DBHelper.Query("sel_InfoTable", sqlParameters);
            List<InfoTable> list = new List<InfoTable>();
            foreach (DataRow row in table.Rows)
            {
                
                    InfoTable accout = new InfoTable()
                    {
                        InfoId = Convert.ToInt32(row["InfoId"]),
                        InfoName = Convert.ToString(row["InfoName"]),
                        InfoAge = Convert.ToInt32(row["InfoAge"]),
                        InfoSex = Convert.ToString(row["InfoSex"]),
                        InfoDate = Convert.ToString(row["InfoDate"]),
                        InfoIdcard = Convert.ToString(row["InfoIdcard"]),
                        InfoTel = Convert.ToString(row["InfoTel"]),
                        InfoAddress = Convert.ToString(row["InfoAddress"]),
                        InfoEmail = Convert.ToString(row["InfoEmail"]),
                        InfoEntrytime = Convert.ToString(row["InfoEntrytime"]),
                        InfoLeavetime = Convert.ToString(row["InfoLeavetime"]),
                        InfoWorkyears = Convert.ToString(row["InfoWorkyears"]),
                        DepId = Convert.ToInt32(row["DepId"]),
                        DutyId = Convert.ToInt32(row["DutyId"]),
                        Userid = Convert.ToInt32(row["Userid"]),
                        InfoSalary = Convert.ToInt32(row["InfoSalary"]),
                        InfoState = Convert.ToInt32(row["InfoState"]),
                        Dep=Convert.ToString(row["Dep"]),
                        DutyName= Convert.ToString(row["DutyName"]),
                        UserNum= Convert.ToInt32(row["UserNum"]),
                    };
                    list.Add(accout);
                
            }
            return list;
        }
    }
}
