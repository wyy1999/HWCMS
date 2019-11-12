using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using HW.CMS.Model;

namespace HW.CMS.DAL
{
    public class ResearchInfoDal
    {
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ResearchInfoModel> ResList()
        {
            string sql = "select * from ResearchInfo";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<ResearchInfoModel> list = new List<ResearchInfoModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    ResearchInfoModel model = new ResearchInfoModel();
                    model.BeginTime = reader["BeginTime"].ToString();
                    //model.ResId = int.Parse(reader["ResId"].ToString());
                    model.ResIntroduce = reader["ResIntroduce"].ToString();
                    model.ResMoney = double.Parse(reader["ResMoney"].ToString());
                    model.Resname = reader["Resname"].ToString();
                    model.ResState = int.Parse(reader["ResState"].ToString()) ;
                    model.EndTime = reader["EndTime"].ToString();
                    list.Add(model);
                }
            }
            return list;
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(ResearchInfoModel model)
        {
            string sql = " insert into ResearchInfo values(@Resname,@ResIntroduce,@BeginTime,@EndTime,@ResMoney,@ResState)";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
           {

               new SqlParameter("@username",model.Resname),
               new SqlParameter("@userpwd",model.ResIntroduce),
               new SqlParameter("@username",model.BeginTime),
               new SqlParameter("@userpwd",model.EndTime),
               new SqlParameter("@username",model.ResMoney),
               new SqlParameter("@userpwd",model.ResState),

          };
            ///执行命令  返回结果
            int result = DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
            int res = 0;
            ///执行命令  返回结果

            if (result != 0)
            {
                res = 100;
                return res;
            }
            else
            {
                res = DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
            }

            return res;
        }


    }
}
