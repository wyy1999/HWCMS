using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    public class LeaveInfoBll
    {
        LeaveInfoDal dal = new LeaveInfoDal();

        public List<LeaveInfoModel> setAll(int DepId=0, int LeaveState=2)
        {
            return dal.setAll(DepId,LeaveState);
        }
        public int delete(int LeaveId)
        {
            return dal.delete(LeaveId);
        }
        public int update(int LeaveId)
        {
            return dal.update(LeaveId);
        }
    }
}
