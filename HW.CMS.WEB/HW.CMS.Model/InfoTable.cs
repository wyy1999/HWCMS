using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class InfoTable
    {
        public int InfoId { get; set; }

        public string InfoName { get; set; }
        public int InfoAge { get; set; }
        public string InfoSex { get; set; }
        public string InfoDate { get; set; }
        public string InfoIdcard { get; set; }
        public string InfoTel { get; set; }
        public string InfoAddress { get; set; }
        public string InfoEmail { get; set; }
        public string InfoEntrytime { get; set; }
        public string InfoLeavetime { get; set; }
        public string InfoWorkyears { get; set; }
        public int DepId { get; set; }
        public int DutyId { get; set; }
        public int Userid { get; set; }
        public double InfoSalary { get; set; }
        public int InfoState { get; set; }
    }
}
