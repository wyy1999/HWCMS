using HW.CMS.DAL;
using HW.CMS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.BLL
{
  public  class ClockInfoBll
    {
        ClockInfoDal dal = new ClockInfoDal();

        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ClockInfo> CloList()
        {
            return dal.CloList();
        }

        }
}
