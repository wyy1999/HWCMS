using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    public class UserLoginBll
    {
        public static List<UserLogin> selectAll()
        {
            return UserLoginDal.selectAll();
        }
        public static int insert(UserLogin param)
        {
            return UserLoginDal.insert(param);
        }
    }
}
