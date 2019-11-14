using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    /// <summary>
    /// 销售表
    /// </summary>
    public class SaleInfoModel
    {
        public int SaleId { get; set; }
        public string GroupName { get; set; }
        public string SaleContent { get; set; }
        public double SaleMoney { get; set; }
        public int DepId { get; set; }


        private string _Dep;

        public string Dep
        {
            get { return _Dep; }
            set { _Dep = value; }
        }

    }
    
}
