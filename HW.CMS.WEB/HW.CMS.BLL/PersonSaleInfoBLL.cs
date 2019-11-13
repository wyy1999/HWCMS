using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;
namespace HW.CMS.BLL
{
   public  class PersonSaleInfoBLL
    {
        PersonSaleInfoDAL dal = new PersonSaleInfoDAL();
        public List<PersonSaleInfoModel> pers()
        {
            return dal.pers();
        }
        public int Add(PersonSaleInfoModel model)
        {
            return dal.Add(model);
        }
        public int update(int InfoId, int DepId, double PerMoney, double ConMoney)
        {
            return dal.update(InfoId, DepId, PerMoney, ConMoney);
        }
        public int delete(int PerId)
        {
            return dal.delete(PerId);
        }
    }
}
