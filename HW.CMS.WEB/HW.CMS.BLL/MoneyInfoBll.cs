using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using HW.CMS.DAL;

namespace HW.CMS.BLL
{
    public class MoneyInfoBll
    {
        MoneyInfoDal dal = new MoneyInfoDal();
        public List<MoneyInfoModel> setAll(string InfoName="", int MoneyState = 0, int Moneysta = 0)
        {
            return dal.setAll(InfoName, MoneyState, Moneysta);
        }
        public int Add(MoneyInfoModel model)
        {
            return dal.Add(model);
        }
        public int update(int MoneyId)
        {
            return dal.update(MoneyId);
        }
    }
}
