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
                    model.ResId = int.Parse(reader["ResId"].ToString());
                    model.ResIntroduce = reader["ResIntroduce"].ToString();
                    model.ResMoney =Convert.ToDecimal(reader["ResMoney"].ToString());
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

               new SqlParameter("@ResIntroduce",model.ResIntroduce),
               new SqlParameter("@BeginTime",model.BeginTime),
               new SqlParameter("@EndTime",model.EndTime),
               new SqlParameter("@ResMoney",model.ResMoney),
               new SqlParameter("@ResState",model.ResState),
               new SqlParameter("@Resname",model.Resname),

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

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="ResId"></param>
        /// <returns></returns>
        public int delete_Res(int ResId)
        {
            string sql = " delete from ResearchInfo where ResId=@ResId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@ResId",ResId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }


      
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int update_Res(ResearchInfoModel model)
        {
            string sql = "update ResearchInfo set Resname=@Resname,ResIntroduce=@ResIntroduce,BeginTime=@BeginTime,EndTime=@EndTime,ResMoney=@ResMoney,ResState=@ResState where ResId=@ResId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@ResId",model.ResId),
                new SqlParameter("@Resname",model.Resname),
                new SqlParameter("@ResIntroduce",model.ResIntroduce),
                new SqlParameter("@BeginTime",model.BeginTime),
                new SqlParameter("@EndTime",model.EndTime),               
                new SqlParameter("@ResMoney",model.ResMoney),
                new SqlParameter("@ResState",model.ResState),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }

    }
}
