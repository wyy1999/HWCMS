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
        private string _UserName;

        public string UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
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
        private int _DutyId;

        public int DutyId
        {
            get { return _DutyId; }
            set { _DutyId = value; }
        }

        private string _DutyName;

        public string DutyName
        {
            get { return _DutyName; }
            set { _DutyName = value; }
        }

      

    }
}
