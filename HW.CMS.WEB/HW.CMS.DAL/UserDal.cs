﻿using System;
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
            string sql = "select DutyInfo.DutyName,userlogin.* from userlogin,DutyInfo where userlogin.DutyId=DutyInfo.DutyId and UserNum =@UserNum and Userpwd=@Userpwd ";
            SqlParameter[] sqlParameters = new SqlParameter[2];
            sqlParameters[0] = new SqlParameter("@UserNum", userName);
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
                    UserNum = Convert.ToInt32(result["UserNum"]),
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
            string sql = "update UserLogin set UserNum=@UserNum,Userpwd=@Userpwd,DutyId=@DutyId where  Userid=@Userid";
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@UserNum",user.UserNum),
                new SqlParameter("@Userpwd",user.Userpwd),
                new SqlParameter("@DutyId",user.DutyId),
                new SqlParameter("@Userid",user.Userid),
            };
            return DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
        }

    }
}
