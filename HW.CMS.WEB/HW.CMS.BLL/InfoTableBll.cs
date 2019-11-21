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
        InfoTableDal dal = new InfoTableDal();
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public static List<InfoTable> selectAll(string InfoName = "", int DepId = 0, int DutyId = 0, string InfoSex = "", int InfoState = 0)
        {
            return InfoTableDal.selectAll(InfoName,DepId,DutyId,InfoSex,InfoState);
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(InfoTable model)
        {
            return dal.Add(model);
        }
        /// 删除
        /// </summary>
        /// <param name="DetId"></param>
        /// <returns></returns>
        public int delete_Info(int InfoId)
        {
            return dal.delete_Info(InfoId);
        }

        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int update_Info(InfoTable model)
        {
            return dal.update_Info(model);
        }

        }
}
