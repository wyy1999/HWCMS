using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class IncomeInfoModel
    {
        public int IncomeId { get; set; }

        public int SaleId { get; set; }

        public decimal SaleMoney { get; set; }

        public string SaleContent { get; set; }
    }
}
