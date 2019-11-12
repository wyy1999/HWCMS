using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    /// <summary>
    /// 报备表
    /// </summary>
    public class ReportInfo
    {
        public int ReportId { get; set; }
        public string ReportReason { get; set; }
        public DateTime ReportTime { get; set; }
        public int DepId { get; set; }
        public int ReportMoney { get; set; }
        public int ReportState { get; set; }

      

        public string ReportStateString
        {
            get {
                if(ReportState == 0) {
                    return "未完成";
                }
                else
                {
                    return "已完成";
                }
            }
            
        }

        private string _Dep;

        public string Dep
        {
            get { return _Dep; }
            set { _Dep = value; }
        }


    }
}
