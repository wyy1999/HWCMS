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
    public class MoneyInfoDal
    {
        public List<MoneyInfoModel> setAll(string InfoName="",int MoneyState = 0,int Moneysta = 0)
        {
            List<MoneyInfoModel> list = new List<MoneyInfoModel>();
            SqlParameter[] sql = new SqlParameter[]
                {
                    new SqlParameter("@InfoName",InfoName),
                    new SqlParameter("@MoneyState",MoneyState),
                    new SqlParameter("@Moneysta",Moneysta)
                };
            DataTable sqlda = DBHelper.Query("Sel_MoneyTable", sql);
            foreach (DataRow row in sqlda.Rows)
            {

                MoneyInfoModel accout = new MoneyInfoModel()
                {
                    MoneyId = Convert.ToInt32(row["MoneyId"]),
                    InfoId = Convert.ToInt32(row["InfoId"]),
                    Conunt = Convert.ToInt32(row["Conunt"]),
                    MoneyDed = Convert.ToDecimal(row["MoneyDed"]),
                    MoneyState = Convert.ToInt32(row["MoneyState"]),
                    Moneysta = Convert.ToInt32(row["Moneysta"]),
                    InfoName = Convert.ToString(row["InfoName"]),
                };
                list.Add(accout);
            }
            return list;
        }
        public int Add(MoneyInfoModel model)
        {
            string sql = "insert into MoneyTable values(@InfoId,@Conunt,@MoneyDed,@MoneyState,2)";
            SqlParameter[] par = new SqlParameter[]
            {

               new SqlParameter("@InfoId",model.InfoId),
               new SqlParameter("@Conunt",model.Conunt),
               new SqlParameter("@MoneyDed",model.MoneyDed),
               new SqlParameter("@MoneyState",model.MoneyState),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
        public int update(int MoneyId)
        {
            string sql = "update MoneyTable set Moneysta=1 where MoneyId=@MoneyId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@MoneyId",MoneyId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
    }
}
