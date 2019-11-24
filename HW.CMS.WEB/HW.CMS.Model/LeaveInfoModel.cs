using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class LeaveInfoModel
    {
        public int LeaveId { get; set; }
        public int InfoId { get; set; }
        public int DepId { get; set; }
        public string LeaveTime { get; set; }
        public string LeaveReason { get; set; }
        public int LeaveState { get; set; }

        public string LeaveStatestr
        {
            get
            {
                if (LeaveState == 0)
                {
                    return "未审核";
                }
                else
                {
                    return "已审核";
                }
            }
        }
        public string InfoName { get; set; }
        public string Dep { get; set; }

    }
}
