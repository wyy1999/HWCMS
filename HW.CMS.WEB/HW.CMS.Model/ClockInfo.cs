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
        public int InfoId { get; set; }
        public string ClockTime { get; set; }
        public int ClockState { get; set; }

        /// <summary>
        /// string 类型
        /// </summary>
        private string _ClockStateString;

        public string ClockStateString
        {
            get {
                if (ClockState==0) {
                    return "未完成";
                }
                else
                {
                    return "已完成";
                }
            }
          
        }

        /// <summary>
        /// 姓名
        /// </summary>
        private string _InfoName;

        public string InfoName
        {
            get { return _InfoName; }
            set { _InfoName = value; }
        }



    }
}
