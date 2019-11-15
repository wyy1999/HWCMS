using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Data;
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
        public List<DetailsInfoModel> DetList( int ResId=0)
        {
            SqlParameter[] sqlParameters = new SqlParameter[]
               {
                    new SqlParameter("@ResId",ResId),
                  
               };
            DataTable table = DBHelper.Query("sel_DetailsInfo", sqlParameters);                 
            List<DetailsInfoModel> list = new List<DetailsInfoModel>();
            foreach (DataRow row in table.Rows)
            {
               
                    DetailsInfoModel model = new DetailsInfoModel();
                    model.InfoName = row["InfoName"].ToString();
                    model.ResIntroduce = row["ResIntroduce"].ToString();                
                    model.Resname = row["Resname"].ToString();
                    model.OverMoney = decimal.Parse(row["OverMoney"].ToString());
                    model.AllMoney = decimal.Parse(row["AllMoney"].ToString()) ;
                    model.DetPlan = row["DetPlan"].ToString();
                    model.DetId = int.Parse(row["DetId"].ToString()) ;
                    model.UseMoney = decimal.Parse(row["UseMoney"].ToString()) ;
                    model.InfoId= int.Parse(row["InfoId"].ToString());
                    model.ResId= int.Parse(row["ResId"].ToString());

                    list.Add(model);
                
            }
            return list;
        }

        /// <summary>
        /// id查询
        /// </summary>
        /// <param name="ResId"></param>
        /// <returns></returns>
        public DetailsInfoModel Res_Id(int ResId)
        {
            DetailsInfoModel model = new DetailsInfoModel();
            //根据用户id 查询用户信息
            string sql = "select * from DetailsInfo where ResId=@ResId";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
               new SqlParameter("@ResId",ResId)

           };
            //5.执行命令，返回结果
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql, sqlParameters);
            if (reader.HasRows)
            {
                //读取第一条数据
                while (reader.Read())
                {
                    model.InfoId = int.Parse(reader["InfoId"].ToString()) ;
                    model.ResId = int.Parse(reader["ResId"].ToString());                  
                    model.OverMoney = decimal.Parse(reader["OverMoney"].ToString());
                    model.AllMoney = decimal.Parse(reader["AllMoney"].ToString());
                    model.DetPlan = reader["DetPlan"].ToString();
                    model.DetId = int.Parse(reader["DetId"].ToString());
                    model.UseMoney = decimal.Parse(reader["UseMoney"].ToString());
                }
            }
            return model;
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(DetailsInfoModel model)
        {
            string sql = " insert into DetailsInfo values(@InfoId,@AllMoney,@UseMoney,@OverMoney,@DetPlan,@ResId)";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
           {

               new SqlParameter("@InfoId",model.InfoId),
               new SqlParameter("@AllMoney",model.AllMoney),
               new SqlParameter("@UseMoney",model.UseMoney),
               new SqlParameter("@OverMoney",model.OverMoney),
               new SqlParameter("@DetPlan",model.DetPlan),
               new SqlParameter("@ResId",model.ResId),

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
        /// <param name="DetId"></param>
        /// <returns></returns>
        public int delete_Det(int DetId)
        {
            string sql = " delete from DetailsInfo where DetId=@DetId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@DetId",DetId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }



        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int update_Det(DetailsInfoModel model)
        {
            string sql = "update DetailsInfo set InfoId=@InfoId,AllMoney=@AllMoney,UseMoney=@UseMoney,OverMoney=@OverMoney,DetPlan=@DetPlan,ResId=@ResId where DetId=@DetId";
            SqlParameter[] par = new SqlParameter[]
            {

                new SqlParameter("@InfoId",model.InfoId),
                new SqlParameter("@AllMoney",model.AllMoney),
                new SqlParameter("@UseMoney",model.UseMoney),
                new SqlParameter("@OverMoney",model.OverMoney),
                new SqlParameter("@DetPlan",model.DetPlan),
                new SqlParameter("@ResId",model.ResId),
                new SqlParameter("@DetId",model.DetId),
            };
            return  DBHelper.ExcuteSqlNonQuery(sql, par);
             
        }

    }
}
