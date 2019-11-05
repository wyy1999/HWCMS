using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    class ResearchInfoModel
    {
        public int ResId { get; set; }
        public string Resname { get; set; }
        public string ResIntroduce { get; set; }
        public string BeginTime { get; set; }
        public string EndTime { get; set; }
        public double ResMoney { get; set; }
        public int ResState { get; set; }
    }
}
