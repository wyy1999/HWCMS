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
    public class ReportInfoModel
    {
        public int ReportId { get; set; }
        public string RepName { get; set; }
        public string ReportReason { get; set; }
        public string ReportTime { get; set; }
        public int DepId { get; set; }
        public decimal ReportMoney { get; set; }
        public int ReportState { get; set; }

      

        public string ReportStateString
        {
            get {
                if(ReportState == 1) {
                    return "未审核";
                }
                else
                {
                    return "已审核";
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
