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
        public int update(PersonSaleInfoModel model)
        {
            return dal.update(model);
        }
        public int delete(int PerId)
        {
            return dal.delete(PerId);
        }
    }
}
