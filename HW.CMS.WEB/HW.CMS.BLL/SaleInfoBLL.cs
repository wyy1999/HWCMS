using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;
namespace HW.CMS.BLL
{
   public  class SaleInfoBLL
    {
        SaleInfoDAL dal = new SaleInfoDAL();
        public List<SaleInfoModel> SalList()
        {
            return dal.SalList();
        }
        public int Add(SaleInfoModel model)
        {
            return dal.Add(model);
        }
        public int update(string GroupName, string SaleContent, double SaleMoney, int DepId, int SaleId)
        {
            return dal.update(GroupName, SaleContent, SaleMoney, DepId, SaleId);
        }
        public int delete(int SaleId)
        {
            return dal.delete(SaleId);
        }
    }
}
