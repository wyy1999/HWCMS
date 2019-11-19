using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using HW.CMS.DAL;

namespace HW.CMS.BLL
{
    public class IncomeInfoBll
    {
        IncomeInfoDal dal = new IncomeInfoDal();
        public List<IncomeInfoModel> setAll()
        {
            return dal.setAll();
        }
        public int Add(IncomeInfoModel model)
        {
            return dal.Add(model);
        }
        public int update(IncomeInfoModel model)
        {
            return dal.update(model);
        }
        public int delete(int IncomeId)
        {
            return dal.delete(IncomeId);
        }
    }
}
