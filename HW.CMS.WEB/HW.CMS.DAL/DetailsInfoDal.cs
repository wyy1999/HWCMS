using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.DAL
{
  public  class DetailsInfoDal
    {
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<DetailsInfoModel> DetList()
        {
            string sql = "select InfoTable.InfoName,ResearchInfo.Resname,ResearchInfo.ResIntroduce,DetailsInfo.*from InfoTable,ResearchInfo,DetailsInfo where InfoTable.InfoId = DetailsInfo.InfoId and ResearchInfo.ResId = DetailsInfo.ResId";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<DetailsInfoModel> list = new List<DetailsInfoModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    DetailsInfoModel model = new DetailsInfoModel();
                    model.InfoName = reader["InfoName"].ToString();
                    model.ResIntroduce = reader["ResIntroduce"].ToString();                
                    model.Resname = reader["Resname"].ToString();
                    model.OverMoney = decimal.Parse(reader["OverMoney"].ToString());
                    model.AllMoney = decimal.Parse(reader["AllMoney"].ToString()) ;
                    model.DetPlan = reader["DetPlan"].ToString();
                    model.DetId = int.Parse(reader["DetId"].ToString()) ;
                    model.UseMoney = decimal.Parse(reader["UseMoney"].ToString()) ;

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
            string sql = "update usertable set Resname=@Resname,ResIntroduce=@ResIntroduce,BeginTime=@BeginTime,EndTime=@EndTime,ResMoney=@ResMoney,ResState=@ResState where ResId=@ResId";
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
