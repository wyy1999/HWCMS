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
                        AccMonth = Convert.ToString(sqlda["AccMonth"]),
                        AccName = Convert.ToString(sqlda["AccName"]),
                        AccReportModey = Convert.ToDecimal(sqlda["AccReportModey"]),
                        AccResMoney = Convert.ToDecimal(sqlda["AccResMoney"]),
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
            string sql = "insert into AccoutInfo values(@ACCSalary,@AccMonth,@AccName,@AccResMoney，@AccReportModey)";
            SqlParameter[] pters = new SqlParameter[]
            {
               new SqlParameter("@ACCSalary",model.ACCSalary),
               new SqlParameter("@AccName",model.AccName),
               new SqlParameter("@AccMonth",model.AccMonth),
               new SqlParameter("@AccResMoney",model.AccResMoney),
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
            string sql = "update AccoutInfo set ACCSalary=@ACCSalary,AccMonth=@AccMonth,AccName=@AccName,AccReportModey=@AccReportModey，AccResMoney=@AccResMoney where AccoutId=@AccoutId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@AccoutId",model.AccoutId),
                new SqlParameter("@ACCSalary",model.ACCSalary),
                new SqlParameter("@AccMonth",model.AccMonth),
                new SqlParameter("@AccName",model.AccName),
                new SqlParameter("@AccReportModey",model.AccReportModey),
                 new SqlParameter("@AccResMoney",model.AccResMoney),
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
        public AccoutInfoModel sel1()
        {

            AccoutInfoModel model = new AccoutInfoModel();
            //根据用户id 查询用户信息
            string sql = "select * from AccoutInfo where AccMonth = '8月份'";
            //5.执行命令，返回结果
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            if (reader.HasRows)
            {
                //读取第一条数据
                while (reader.Read())
                {
                    model.AccoutId = Convert.ToInt32(reader["AccoutId"]);
                    model.ACCSalary = Convert.ToDecimal(reader["ACCSalary"]);
                    model.AccMonth = Convert.ToString(reader["AccMonth"]);
                    model.AccName = Convert.ToString(reader["AccName"]);
                    model.AccReportModey = Convert.ToDecimal(reader["AccReportModey"]); 
                    model.AccMoney = Convert.ToDecimal(reader["AccMoney"]);
                    model.AccResMoney = Convert.ToDecimal(reader["AccResMoney"]);

                }
            }
            return model;

        }
        public AccoutInfoModel sel2()
        {

            AccoutInfoModel model = new AccoutInfoModel();
            //根据用户id 查询用户信息
            string sql = "select * from AccoutInfo where AccMonth = '9月份'";
            //5.执行命令，返回结果
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            if (reader.HasRows)
            {
                //读取第一条数据
                while (reader.Read())
                {
                    model.AccoutId = Convert.ToInt32(reader["AccoutId"]);
                    model.ACCSalary = Convert.ToDecimal(reader["ACCSalary"]);
                    model.AccMonth = Convert.ToString(reader["AccMonth"]);
                    model.AccName = Convert.ToString(reader["AccName"]);
                    model.AccReportModey = Convert.ToDecimal(reader["AccReportModey"]);
                    model.AccMoney = Convert.ToDecimal(reader["AccMoney"]);
                    model.AccResMoney = Convert.ToDecimal(reader["AccResMoney"]);

                }
            }
            return model;

        }
        public AccoutInfoModel sel3()
        {

            AccoutInfoModel model = new AccoutInfoModel();
            //根据用户id 查询用户信息
            string sql = "select * from AccoutInfo where AccMonth = '10月份'";
            //5.执行命令，返回结果
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            if (reader.HasRows)
            {
                //读取第一条数据
                while (reader.Read())
                {
                    model.AccoutId = Convert.ToInt32(reader["AccoutId"]);
                    model.ACCSalary = Convert.ToDecimal(reader["ACCSalary"]);
                    model.AccMonth = Convert.ToString(reader["AccMonth"]);
                    model.AccName = Convert.ToString(reader["AccName"]);
                    model.AccReportModey = Convert.ToDecimal(reader["AccReportModey"]);
                    model.AccMoney = Convert.ToDecimal(reader["AccMoney"]);
                    model.AccResMoney = Convert.ToDecimal(reader["AccResMoney"]);

                }
            }
            return model;

        }
        public AccoutInfoModel sel4()
        {

            AccoutInfoModel model = new AccoutInfoModel();
            //根据用户id 查询用户信息
            string sql = "select * from AccoutInfo where AccMonth = '11月份'";
            //5.执行命令，返回结果
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            if (reader.HasRows)
            {
                //读取第一条数据
                while (reader.Read())
                {
                    model.AccoutId = Convert.ToInt32(reader["AccoutId"]);
                    model.ACCSalary = Convert.ToDecimal(reader["ACCSalary"]);
                    model.AccMonth = Convert.ToString(reader["AccMonth"]);
                    model.AccName = Convert.ToString(reader["AccName"]);
                    model.AccReportModey = Convert.ToDecimal(reader["AccReportModey"]);
                    model.AccMoney = Convert.ToDecimal(reader["AccMoney"]);
                    model.AccResMoney = Convert.ToDecimal(reader["AccResMoney"]);

                }
            }
            return model;

        }
    }
}
