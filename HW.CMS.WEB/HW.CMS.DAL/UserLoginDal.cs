using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using System.Data;
using System.Data.SqlClient;

namespace HW.CMS.DAL
{
    public class UserLoginDal
    {
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public static List<UserLogin> selectAll()
        {
            List<UserLogin> list = new List<UserLogin>();
            string sql = "select * from UserLogin";
            SqlDataReader sqlda = DBHelper.ExcuteSqlDataReader(sql);
            if (sqlda.HasRows)
            {
                while (sqlda.Read())
                {
                    UserLogin accout = new UserLogin()
                    {
                        Userid = Convert.ToInt32(sqlda["Userid"]),
                        UserNum = Convert.ToInt32(sqlda["UserNum"]),
                        Userpwd = Convert.ToString(sqlda["Userpwd"]),
                        UserRole = Convert.ToInt32(sqlda["UserRole"]),
                    };
                    list.Add(accout);
                };
            }
            return list;
        }

        public static int insert(UserLogin param)
        {
           string sql = "insert into UserLogin values(@UserNum,@Userpwd,@UserRole)";
            SqlParameter[] sqlpar = new SqlParameter[]
            {
               new SqlParameter("@UserNum",param.UserNum),
               new SqlParameter("@Userpwd",param.Userpwd),
               new SqlParameter("@UserRole",param.UserRole),
            };
            return DBHelper.ExcuteSqlNonQuery(sql, sqlpar);
        }
    }
}
