using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using HW.CMS.Model;

namespace HW.CMS.DAL
{
    public class IncomeInfoDal
    {
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public List<IncomeInfoModel> setAll()
        {
            List<IncomeInfoModel> list = new List<IncomeInfoModel>();
            string sql = "select * from IncomeInfo ";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    IncomeInfoModel accout = new IncomeInfoModel()
                    {
                        IncomeId = Convert.ToInt32(sqlda["IncomeId"]),
                     
                         IncomMoney= Convert.ToDecimal(sqlda["IncomMoney"]),
                        IncomForm = Convert.ToString(sqlda["IncomForm"])
                    };
                    list.Add(accout);
                };
            }
            return list;
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(IncomeInfoModel model)
        {
            string sql = "insert into IncomeInfo values(@IncomMoney,@IncomForm)";
            SqlParameter[] par = new SqlParameter[]
            {

               new SqlParameter("@IncomForm",model.IncomForm),
               new SqlParameter("@IncomMoney",model.IncomMoney)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int update(IncomeInfoModel model)
        {
            string sql = "update IncomeInfo set IncomMoney=@IncomMoney,IncomForm=@IncomForm where IncomeId=@IncomeId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@IncomeId",model.IncomeId),
                new SqlParameter("@IncomMoney",model.IncomMoney),
                new SqlParameter("@IncomForm",model.IncomForm)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="AccoutId"></param>
        /// <returns></returns>
        public int delete(int IncomeId)
        {
            string sql = "delete from IncomeInfo where IncomeId=@IncomeId";
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter ("@IncomeId",IncomeId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, p);
            return result;
        }
    }
}
