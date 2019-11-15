using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    /// <summary>
    /// 研发表
    /// </summary>
  public  class ResearchInfoBll
    {
        ResearchInfoDal dal = new ResearchInfoDal();
        /// <summary>
        /// 查询全部
        /// </summary>
        /// <returns></returns>
        public List<ResearchInfoModel> ResList(string Resname = "", int ResState = 0)
        {
            return dal.ResList(Resname,ResState);
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(ResearchInfoModel model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="ResId"></param>
        /// <returns></returns>
        public int delete_Res(int ResId)
        {

            return dal.delete_Res(ResId);
        }

        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int update_Res(ResearchInfoModel model)
        {
            return dal.update_Res(model);
        }

        }
}
