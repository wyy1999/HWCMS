using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;

namespace HW.CMS.DAL
{
    public class ClockInfoDal
    {

        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ClockInfo> CloList()
        {
            string sql = "select UserLogin.UserName, ClockInfo.*from UserLogin,ClockInfo where ClockInfo.Userid=UserLogin.Userid";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<ClockInfo> list = new List<ClockInfo>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    ClockInfo model = new ClockInfo();
                    model.ClockTime = reader["ClockTime"].ToString();
                    model.ClockId = int.Parse(reader["ClockId"].ToString());
                    model.UserName = reader["UserName"].ToString();
                    model.Userid = int.Parse(reader["Userid"].ToString());
                    model.ClockState = int.Parse(reader["ClockState"].ToString());

                    list.Add(model);
                }
            }
            return list;
        }

        public int inserts(int st)
        {
            string sql = "insert  into ClockInfo values(@Userid,'" + DateTime.Now+"',1)";
            SqlParameter[] sqlParameters = new SqlParameter[]
          {
                new SqlParameter("@Userid",st),
          };
            return DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
        }
    }
}
