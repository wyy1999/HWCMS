using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;

namespace HW.CMS.DAL
{
   public class DutyInfoDal
    {
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public DutyInfoModel selectAll()
        {
            DutyInfoModel model = new DutyInfoModel();
            //根据用户id 查询用户信息
            string sql = "select * from DutyInfo ";
            //5.执行命令，返回结果
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            if (reader.HasRows)
            {
                //读取第一条数据
                while (reader.Read())
                {
                    model.DutyId = int.Parse(reader["DutyId"].ToString());
                    model.DutyName = reader["DutyName"].ToString();
                 
                }
            }
            return model;
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int add(DutyInfoModel model)
        {
           
            string sql = " insert into DutyInfo values(@DutyName)";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
           {

               new SqlParameter("@DutyName",model.DutyName),
          

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
        /// <param name="DutyId"></param>
        /// <returns></returns>
        public int delete(int DutyId)
        {
            string sql = " delete from DutyInfo wrere DutyId=@DutyId";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
           {

             
               new SqlParameter("@DutyId",DutyId),


          };
            ///执行命令  返回结果
            int result = DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
            return result;
        }



    }
}
