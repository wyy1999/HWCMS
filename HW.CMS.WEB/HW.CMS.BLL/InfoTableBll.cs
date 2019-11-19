using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using HW.CMS.DAL;

namespace HW.CMS.BLL
{
    public class InfoTableBll
    {

        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public static List<InfoTable> selectAll(string InfoName = "", int DepId = 0, int DutyId = 0, string InfoSex = "")
        {
            return InfoTableDal.selectAll(InfoName,DepId,DutyId,InfoSex);
        }
        }
}
