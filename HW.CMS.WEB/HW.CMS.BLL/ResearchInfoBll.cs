using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
  public  class ResearchInfoBll
    {
        ResearchInfoDal dal = new ResearchInfoDal();
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ResearchInfoModel> ResList()
        {
            return dal.ResList();
        }
        }
}
