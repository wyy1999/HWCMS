using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class MoneyInfoModel
    {
        public int MoneyId { get; set; }
        public int InfoId { get; set; }
        public int Conunt { get; set; }
        public decimal MoneyDed { get; set; }
        public int MoneyState { get; set; }
        public string MoneyStatestr
        {
            get
            {
                if (MoneyState == 1)
                {
                    return "是";
                }
                else
                {
                    return "否";
                }
            }
        }
        public int Moneysta { get; set; }
        public string Moneystastr
        {
            get
            {
                if (Moneysta == 1)
                {
                    return "已结算";
                }
                else
                {
                    return "未结算";
                }
            }
        }
        public string InfoName { get; set; }

    }
}
