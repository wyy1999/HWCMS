using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;

namespace HW.CMS.BLL
{
  public  class DetailsInfoBll
    {
        DetailsInfoDal dal = new DetailsInfoDal();
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<DetailsInfoModel> DetList()
        {
            return dal.DetList();
        }
        }
}
