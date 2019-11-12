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
                    model.ResMoney = double.Parse(reader["ResMoney"].ToString());
                    model.Resname = reader["Resname"].ToString();
                    model.ResState = int.Parse(reader["ResState"].ToString()) ;
                    model.EndTime = reader["EndTime"].ToString();
                    list.Add(model);
                }
            }
            return list;
        }

    }
}
