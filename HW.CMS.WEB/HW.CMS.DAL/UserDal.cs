using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.DAL
{
    public class UserDal
    {
        /// <summary>
        /// 登录验证
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="passWord"></param>
        /// <returns></returns>
        public object LoginIn(string userName, string passWord)
        {
            //与数据库操作的步骤
            string sql = "select * from UserLogin where UserNum=@UserNum and Userpwd=@Userpwd ";
            SqlParameter[] sqlParameters = new SqlParameter[2];
            sqlParameters[0] = new SqlParameter("@UserNum", userName);
            sqlParameters[1] = new SqlParameter("@Userpwd", passWord);
            //5.执行命令，返回结果
            object result = DBHelper.ExcuteScalar(sql, sqlParameters);
            return result;
        }

        public int delete(int id)
        {
            string sql = "delete from UserLogin where Userid =@id";
            SqlParameter[] sqlParameters = new SqlParameter[1];
            sqlParameters[0] = new SqlParameter("@id", id);
            return DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
        }

    }
}
