using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class ReportInfo
    {
        public int ReportId { get; set; }
        public int ReportReason { get; set; }
        public int ReportTime { get; set; }
        public int DepId { get; set; }
        public int ReportMoney { get; set; }
        public int ReportState { get; set; }
    }
}
