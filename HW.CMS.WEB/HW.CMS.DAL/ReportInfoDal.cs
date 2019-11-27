using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace HW.CMS.DAL
{
    public class ReportInfoDal
    {
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ReportInfoModel> RepList(string RepName = "",int ReportState=0)
        {
            //string sql = "select ReportInfo.*,DepartmentInfo.Dep from ReportInfo,DepartmentInfo where DepartmentInfo.DepId=ReportInfo.DepId";
            //SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
               new SqlParameter("@RepName",RepName),
               new SqlParameter("@ReportState",ReportState)
            };
            DataTable table = DBHelper.Query("Sel_ReportInfo", sqlParameters);
            List<ReportInfoModel> list = new List<ReportInfoModel>();
           foreach(DataRow row in table.Rows)
            {
               
                    ReportInfoModel model = new ReportInfoModel();
                model.Dep = row["Dep"].ToString();
                model.ReportId = int.Parse(row["ReportId"].ToString());
                    model.ReportMoney = Convert.ToDecimal(row["ReportMoney"]);
                    model.ReportTime = row["ReportTime"].ToString() ;
                    model.ReportReason = row["ReportReason"].ToString();          
                    model.ReportState = int.Parse(row["ReportState"].ToString());
                    model.DepId = int.Parse(row["DepId"].ToString());
                model.RepName= row["RepName"].ToString();
                list.Add(model);
               
            }
            return list;
        }
        public int Del_ReportInfo(int ReportId)
        {
            string sql = "delete from ReportInfo where ReportId=@ReportId";
            SqlParameter[] pal = new SqlParameter[] {
                new SqlParameter("@ReportId",ReportId)
            };
            int retult = DBHelper.ExcuteSqlNonQuery(sql,pal);
            return retult;
        }

        public int update_Res(int ReportId)
        {
            string sql = "update ReportInfo set ReportState=2 where ReportId=@ReportId ";
            SqlParameter[] par = new SqlParameter[]
            {
                
                new SqlParameter("@ReportId",ReportId),
              
  
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }

        public int Add(ReportInfoModel model)
        {
            string sql = " insert into ReportInfo values(@RepName,@ReportReason,@ReportTime,@DepId,@ReportMoney,@ReportState)";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
           {
               new SqlParameter("@RepName",model.RepName),
               new SqlParameter("@ReportReason",model.ReportReason),
               new SqlParameter("@ReportTime",model.ReportTime),
               new SqlParameter("@DepId",model.DepId),
               new SqlParameter("@ReportMoney",model.ReportMoney),
               new SqlParameter("@ReportState",model.ReportState)


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
