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
            string sql = "select SaleInfo.*,DepartmentInfo.Dep from SaleInfo,DepartmentInfo where DepartmentInfo.DepId=SaleInfo.DepId";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            List<SaleInfoModel> list = new List<SaleInfoModel>();
            if(reader.HasRows)
            {
                while(reader.Read())
                {
                    SaleInfoModel model = new SaleInfoModel();
                    model.Dep = reader["Dep"].ToString();
                    model.SaleId = int.Parse(reader["SaleId"].ToString());
                    model.GroupName = reader["GroupName"].ToString();
                    model.SaleContent = reader["SaleContent"].ToString();
                    model.SaleMoney = double.Parse(reader["SaleMoney"].ToString());
                   
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
        public int update(SaleInfoModel model)
        {
            string sql = "update SaleInfo set GroupName=@GroupName,SaleContent=@SaleContent,SaleMoney=@SaleMoney,DepId=@DepId where SaleId=@SaleId ";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@GroupName",model.GroupName),
                new SqlParameter("@SaleContent",model.SaleContent),
                new SqlParameter("@SaleMoney",model.SaleMoney),
                new SqlParameter("@DepId",model.DepId),
                new SqlParameter("@SaleId",model.SaleId),
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql,par);
            return result;
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int delete(int SaleId)
        {
            string sql = "delete from SaleInfo where SaleId=@SaleId";
            SqlParameter[] p = new SqlParameter[]
            {
                new SqlParameter("@SaleId",SaleId)
            };
            int result= DBHelper.ExcuteSqlNonQuery(sql,p);
            return result;
        }
    }
}
