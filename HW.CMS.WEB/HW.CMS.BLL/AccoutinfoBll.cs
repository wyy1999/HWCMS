using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    public class AccoutinfoBll
    {
        public static List<AccoutInfoModel> selectall()
        {
            return AccoutInfoDal.selectAll();
        }
    }
}
