using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class UserLogin
    {
        public int Userid { get; set; }
        public int UserNum { get; set; }
        public string Userpwd { get; set; }
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
