using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class UserModel
    {
        //登录id
        private int _Userid;

        public int Userid
        {
            get { return _Userid; }
            set { _Userid = value; }
        }

        /// <summary>
        /// 编号
        /// </summary>
        private int _UserNum;

        public int UserNum
        {
            get { return _UserNum; }
            set { _UserNum = value; }
        }

        /// <summary>
        /// 密码
        /// </summary>
        private string _Userpwd;

        public string Userpwd
        {
            get { return _Userpwd; }
            set { _Userpwd = value; }
        }

        /// <summary>
        /// 角色
        /// </summary>
        private int _UserRole;

        public int UserRole
        {
            get { return _UserRole; }
            set { _UserRole = value; }
        }


    }
}
