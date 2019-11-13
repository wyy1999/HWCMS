using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using System.Data.SqlClient;
namespace HW.CMS.DAL
{
   public  class SaleInfoDAL
    {
        /// <summary>
        /// 查询全部
        /// </summary>
        public List<SaleInfoModel> SalList()
        {
            string sql = "select * from SaleInfo";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<SaleInfoModel> list = new List<SaleInfoModel>();
            if(reader.HasRows)
            {
                while(reader.Read())
                {
                    SaleInfoModel model = new SaleInfoModel();
                    model.SaleId = int.Parse(reader["SaleId"].ToString());
                    model.GroupName = reader["GroupName"].ToString();
                    model.SaleContent = reader["SaleContent"].ToString();
                    model.SaleMoney = double.Parse(reader["SaleMoney"].ToString());
                    model.DepId = int.Parse(reader["DepId"].ToString());
                    list.Add(model);
                }
            }
            return list;
        }
        /// <summary>
        /// 添加
        /// </summary>
       public int Add(SaleInfoModel model)
        {
            string sql = "insert into SaleInfo values(@GroupName,@SaleContent,@SaleMoney,@DepId)";
            SqlParameter[] pters = new SqlParameter[]
            {
                new SqlParameter("@groupname",model.GroupName),
                new SqlParameter("@salecontent",model.SaleContent),
                new SqlParameter("@salemoney",model.SaleMoney),
                new SqlParameter("@depid",model.DepId),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, pters);
            int res = 0;
            if(result!=0)
            {
                res = 100;
                return res;
            }
            else
            {
                res= DBHelper.ExcuteSqlNonQuery(sql, pters);
            }
            return res;
        }
        /// <summary>
        /// 更新
        /// </summary>
        /// 
        public int update(string GroupName,string SaleContent,double SaleMoney,int DepId,int SaleId)
        {
            string sql = "update SaleInfo set groupname=@groupname,salecontent=@salecontent,salemoney=@salemoney,depid=@depid,saleid=@id";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@groupname",GroupName),
                new SqlParameter("@salecontent",SaleContent),
                new SqlParameter("@salemoney",SaleMoney),
                new SqlParameter("@depid",DepId),
                new SqlParameter("@id",SaleId),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql,par);
            return result;
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int delete(int SaleId)
        {
            string sql = "delete from SaleInfo where SaleId=@id";
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@id",SaleId)
            };
            int result= DBHelper.ExcuteSqlNonQuery(sql,p);
            return result;
        }
    }
}
