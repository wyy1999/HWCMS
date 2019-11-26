using HW.CMS.DAL;
using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.BLL
{
   public class DutyInfoBll
    {
        DutyInfoDal dal = new DutyInfoDal();
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public DutyInfoModel selectAll()
        {
            return dal.selectAll();
        }


        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int add(DutyInfoModel model)
        {
            return dal.add(model);
        }


        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="DutyId"></param>
        /// <returns></returns>
        public int delete(int DutyId)
        {
            return dal.delete(DutyId);
        }
        }
}
