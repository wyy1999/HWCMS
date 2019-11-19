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
        /// <summary>
        /// 查询全部
        /// </summary>
        public List<SaleInfoModel> SalList(string GroupName = "", int DepId = 0)
        {
            return dal.SalList(GroupName,DepId);
        }
        /// <summary>
        /// 添加
        /// </summary>
        public int Add(SaleInfoModel model)
        {
            return dal.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int update(SaleInfoModel model)
        {
            return dal.update(model);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int delete(int SaleId)
        {
            return dal.delete(SaleId);
        }
    }
}
