using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;

namespace HW.CMS.DAL
{
  public  class ClockInfoDal
    {

        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ClockInfo> CloList()
        {
            string sql = "select InfoTable.InfoName,ClockInfo.*from InfoTable,ClockInfo where ClockInfo.InfoId=InfoTable.InfoId";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<ClockInfo> list = new List<ClockInfo>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    ClockInfo model = new ClockInfo();
                    model.ClockTime = reader["ClockTime"].ToString();
                    model.ClockId = int.Parse(reader["ClockId"].ToString());
                    model.InfoName = reader["InfoName"].ToString();
                    //model.InfoId = int.Parse(reader["InfoId"].ToString());                   
                    model.ClockState = int.Parse(reader["ClockState"].ToString());
                    
                    list.Add(model);
                }
            }
            return list;
        }
    }
}
