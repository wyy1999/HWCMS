using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;

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
        public static UserLogin LoginIn(string userName, string passWord)
        {


            //与数据库操作的步骤
            string sql = "select DutyInfo.DutyName,userlogin.* from userlogin,DutyInfo where userlogin.DutyId=DutyInfo.DutyId and UserName =@UserName and Userpwd=@Userpwd ";
            SqlParameter[] sqlParameters = new SqlParameter[2];
            sqlParameters[0] = new SqlParameter("@UserName", userName);
            sqlParameters[1] = new SqlParameter("@Userpwd", passWord);
            //5.执行命令，返回结果
            UserLogin accout = new UserLogin();
            SqlDataReader result = DBHelper.ExcuteSqlDataReader(sql, sqlParameters);
            if (result.HasRows)
            {
                while (result.Read())
                {
                    accout = new UserLogin() { 

                    Userid = Convert.ToInt32(result["Userid"]),
                    UserName = Convert.ToString(result["UserName"]),
                    Userpwd = Convert.ToString(result["Userpwd"]),
                    DutyId=Convert.ToInt32(result["DutyId"]),
                     DutyName=Convert.ToString(result["DutyName"])
                };
            };
            }
            return accout;
        }

        public int delete(int id)
        {
            string sql = "delete from UserLogin where Userid =@id";
            SqlParameter[] sqlParameters = new SqlParameter[1];
            sqlParameters[0] = new SqlParameter("@id", id);
            return DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
        }

        public int update(UserLogin user)
        {
            string sql = "update UserLogin set UserName=@UserName,Userpwd=@Userpwd,DutyId=@DutyId where  Userid=@Userid";
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@UserName",user.UserName),
                new SqlParameter("@Userpwd",user.Userpwd),
                new SqlParameter("@DutyId",user.DutyId),
                new SqlParameter("@Userid",user.Userid),
            };
            return DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
        }


        public int insert_leave(int uid,int tid,string baca)
        {
            string sql = "insert into LeaveInfo values(@InfoId,@DepId,'"+ DateTime.Now+ "',@LeaveReason,0)";
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@InfoId",uid),
                new SqlParameter("@DepId",tid),
                new SqlParameter("@LeaveReason",baca),
            };
            return DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
        }
    }
}
