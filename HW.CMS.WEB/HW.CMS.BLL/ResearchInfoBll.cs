using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    public class ResearchInfoBll
    {
        public static List<ResearchInfoModel> selectAll()
        {
            return ResearchInfoDal.selectAll();
        }
    }
}
