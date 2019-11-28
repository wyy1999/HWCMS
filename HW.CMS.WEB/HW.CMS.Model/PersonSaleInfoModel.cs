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
        public string PerName { get; set; }
        
        public string PerContent { get; set; }
        public decimal PerMoney { get; set; }
        public decimal ConMoney { get; set; }

      

       
        private string _UserName;

        public string UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
        }

    }
}
