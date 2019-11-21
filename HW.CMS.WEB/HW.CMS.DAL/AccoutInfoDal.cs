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
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public List<AccoutInfoModel> selectAll()
        {
            List<AccoutInfoModel> list = new List<AccoutInfoModel>();
            string sql = "select * from AccoutInfo ";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    AccoutInfoModel accout = new AccoutInfoModel()
                    {
                        AccoutId = Convert.ToInt32(sqlda["AccoutId"]),
                        ACCSalary = Convert.ToDecimal(sqlda["ACCSalary"]),
                        AccSubsidy = Convert.ToDecimal(sqlda["AccSubsidy"]),
                        AccFiveMoney =Convert.ToDecimal(sqlda["AccFiveMoney"]) ,
                         AccReportModey= Convert.ToDecimal(sqlda["AccReportModey"]),
                        ReportMoney = Convert.ToDecimal(sqlda["ReportMoney"])
                        
                    };
                    list.Add(accout);
                };
            }
            return list;
        }/// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(AccoutInfoModel model)
        {
            string sql = "insert into AccoutInfo values(@ACCSalary,@AccSubsidy,@AccFiveMoney,@AccReportModey)";
            SqlParameter[] pters = new SqlParameter[]
            {
               new SqlParameter("@ACCSalary",model.ACCSalary),
               new SqlParameter("@AccSubsidy",model.AccSubsidy),
               new SqlParameter("@AccFiveMoney",model.AccFiveMoney),
               new SqlParameter("@AccReportModey",model.AccReportModey),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, pters);
            int res = 0;
            if (result != 0)
            {
                res = 100;
                return res;
            }
            else
            {
                res = DBHelper.ExcuteSqlNonQuery(sql, pters);
            }
            return res;
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int update(AccoutInfoModel model)
        {
            string sql = "update AccoutInfo set ACCSalary=@ACCSalary,AccSubsidy=@AccSubsidy,AccFiveMoney=@AccFiveMoney,AccReportModey=@AccReportModey where AccoutId=@AccoutId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@AccoutId",model.AccoutId),
                new SqlParameter("@ACCSalary",model.ACCSalary),
                new SqlParameter("@AccSubsidy",model.AccSubsidy),
                new SqlParameter("@AccFiveMoney",model.AccFiveMoney),
                new SqlParameter("@AccReportModey",model.AccReportModey),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int delete(int AccoutId)
        {
            string sql = "delete from AccoutInfo where AccoutId=@AccoutId";
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter ("@AccoutId",AccoutId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, p);
            return result;
        }
    }
}
