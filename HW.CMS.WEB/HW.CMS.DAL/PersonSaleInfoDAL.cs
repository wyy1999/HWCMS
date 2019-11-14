using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using System.Data.SqlClient;
namespace HW.CMS.DAL
{
   public  class PersonSaleInfoDAL
    {
        /// <summary>
        /// 查询全部
        /// </summary>
         public List<PersonSaleInfoModel> pers()
        {
            string sql = "SELECT InfoTable.InfoName,DepartmentInfo.Dep,PersonSaleInfo.*FROM InfoTable,DepartmentInfo,PersonSaleInfo WHERE InfoTable.InfoId = PersonSaleInfo.InfoId AND DepartmentInfo.DepId = PersonSaleInfo.DepId";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<PersonSaleInfoModel> list = new List<PersonSaleInfoModel>();
            if(reader.HasRows)
            {
                while(reader.Read())
                {
                    PersonSaleInfoModel model = new PersonSaleInfoModel();
                    model.PerId = int.Parse(reader["PerId"].ToString());
                    model.InfoId = int.Parse(reader["InfoId"].ToString());
                    model.DepId= int.Parse(reader["DepId"].ToString());
                    model.PerContent = reader["PerContent"].ToString();
                    model.PerMoney=double.Parse(reader["PerMoney"].ToString());
                    model.ConMoney= double.Parse(reader["ConMoney"].ToString());
                    model.Dep = reader["Dep"].ToString();
                    model.InfoName= reader["InfoName"].ToString();
                    list.Add(model);
                }
            }
            return list;
        }
        /// <summary>
        /// 添加
        /// </summary>
        public int Add(PersonSaleInfoModel model)
        {
            string sql = "insert into PersonSaleInfo values(@InfoId,@DepId,@PerMoney,@ConMoney)";
            SqlParameter[] pters = new SqlParameter[]
            {
                new SqlParameter("@infoid",model.InfoId),
               new SqlParameter("depid",model.DepId),
               new SqlParameter("permoney",model.PerMoney),
               new SqlParameter("conmoney",model.ConMoney),
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
                res = DBHelper.ExcuteSqlNonQuery(sql,pters);
            }
            return res;
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int update(PersonSaleInfoModel model)
        {
            string sql = "update PersonSaleInfo set InfoId=@InfoId,DepId=@DepId,PerContent=@PerContent,PerMoney=@PerMoney,ConMoney=@ConMoney where PerId=@PerId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@PerId",model.InfoId),
                new SqlParameter("@InfoId",model.InfoId),
                new SqlParameter("@DepId",model.DepId),
                new SqlParameter("@PerContent",model.PerContent),
                new SqlParameter("@PerMoney",model.PerMoney),
                new SqlParameter("@ConMoney",model.ConMoney),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int delete(int PerId)
        {
            string sql = "delete from PersonSaleInfo where PerId=@PerId";
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter ("@PerId",PerId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql,p);
            return result;
        }
    }
}
