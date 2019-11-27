using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using System.Data.SqlClient;
using System.Data;

namespace HW.CMS.DAL
{
   public class TuTableDal
    {
        /// <summary>
        /// 查询全部
        /// </summary>
        public static List<TuTableModel> SalList()
        {
            string sql = "select * from TuTable";
            SqlDataReader reader = DBHelper.ExcuteSqlDataReader(sql);

            List<TuTableModel> list = new List<TuTableModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    TuTableModel model = new TuTableModel();
                    model.TuCity = reader["TuCity"].ToString();
                    model.Tuid = int.Parse(reader["Tuid"].ToString());
                    model.TuValue = int.Parse(reader["TuValue"].ToString());
                 
                    list.Add(model);

                }
            }

            return list;
        }
    }
}
