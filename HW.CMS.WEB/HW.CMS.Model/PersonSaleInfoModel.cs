using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    /// <summary>
    /// 个人销售表
    /// </summary>
    public class PersonSaleInfoModel
    {
        public int PerId { get; set; }
        public int InfoId { get; set; }
        public int DepId { get; set; }
        public string PerContent { get; set; }
        public decimal PerMoney { get; set; }
        public decimal ConMoney { get; set; }

        private string _Dep;

        public string Dep
        {
            get { return _Dep; }
            set { _Dep = value; }
        }
        private string _InfoName;

        public string InfoName
        {
            get { return _InfoName; }
            set { _InfoName = value; }
        }

    }
}
