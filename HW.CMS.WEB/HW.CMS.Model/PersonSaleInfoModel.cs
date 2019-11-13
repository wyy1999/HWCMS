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
        public double PerMoney { get; set; }
        public double ConMoney { get; set; }
    }
}
