using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using HW.CMS.Model;
using System.Data;
namespace HW.CMS.DAL
{
    public class LeaveInfoDal
    {

        public List<LeaveInfoModel> setAll(int DepId=0,int LeaveState=0)
        {
            List<LeaveInfoModel> list = new List<LeaveInfoModel>();
            SqlParameter[] sql = new SqlParameter[]
                {
                    new SqlParameter("@DepId",DepId),
                    new SqlParameter("@LeaveState",LeaveState)
                };
            DataTable sqlda = DBHelper.Query("Sel_LeaveInfo",sql);
            foreach (DataRow row in sqlda.Rows)
            {

                LeaveInfoModel accout = new LeaveInfoModel()
                {
                    LeaveId = Convert.ToInt32(row["LeaveId"]),
                    Userid = Convert.ToInt32(row["Userid"]),
                    DepId = Convert.ToInt32(row["DepId"]),
                    LeaveTime = Convert.ToString(row["LeaveTime"]),
                    LeaveReason = Convert.ToString(row["LeaveReason"]),
                    LeaveState = Convert.ToInt32(row["LeaveState"]),
                    UserName = Convert.ToString(row["UserName"]),
                     LeTime= Convert.ToString(row["LeTime"]),
                    Dep = Convert.ToString(row["Dep"]),
                };
                list.Add(accout);
            }
            return list;
        }
        public int delete(int LeaveId)
        {
            string sql = " delete from LeaveInfo where LeaveId=@LeaveId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@LeaveId",LeaveId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
        public int update(int LeaveId)
        {
            string sql = "update LeaveInfo set LeaveState=2 where LeaveId=@LeaveId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@LeaveId",LeaveId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
    }
}
