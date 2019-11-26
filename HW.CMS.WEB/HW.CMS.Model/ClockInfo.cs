using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    /// <summary>
    /// /打卡表
    /// </summary>
    public class ClockInfo
    {
        public int ClockId { get; set; }
        public int Userid { get; set; }
        public string ClockTime { get; set; }
        public int ClockState { get; set; }

        /// <summary>
        /// string 类型
        /// </summary>
        //private string _ClockStateString;

        public string ClockStateString
        {
            get {
                if (ClockState==1) {
                    return "已打卡";
                }
                else
                {
                    return "未打卡";
                }
            }
          
        }

        /// <summary>
        /// 姓名
        /// </summary>
        private string _UserName;

        public string UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
        }



    }
}
