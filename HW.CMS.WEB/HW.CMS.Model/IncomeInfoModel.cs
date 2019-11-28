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

        public string InMonth { get; set; }

        public decimal IncomMoney { get; set; }

        public string IncomForm { get; set; }
    }
}
