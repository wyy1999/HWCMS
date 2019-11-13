using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    public class UserBll
    {
        UserDal dal = new UserDal();
        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="passWord"></param>
        /// <returns></returns>
        public UserLogin LoginIn(string userName, string passWord)
        {
            return UserDal.LoginIn(userName, passWord);
        }
        public int delete(int id)
        {
            return dal.delete(id);
        }
        public int update(UserLogin user)
        {
            return dal.update(user);
        }
    }
}
