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
        private string _Dep;

        public string Dep
        {
            get { return _Dep; }
            set { _Dep = value; }
        }

        private string _DutyName;

        public string DutyName
        {
            get { return _DutyName; }
            set { _DutyName = value; }
        }
        private int _UserNum;

        public int UserNum
        {
            get { return _UserNum; }
            set { _UserNum = value; }
        }

    }
}
