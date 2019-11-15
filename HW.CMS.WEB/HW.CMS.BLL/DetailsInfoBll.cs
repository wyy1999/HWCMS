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
        public List<DetailsInfoModel> DetList(int ResId=0)
        {
            return dal.DetList(ResId);
        }


        /// <summary>
        /// id查询
        /// </summary>
        /// <param name="ResId"></param>
        /// <returns></returns>
        public DetailsInfoModel Res_Id(int ResId)
        {
            return dal.Res_Id(ResId);
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(DetailsInfoModel model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="DetId"></param>
        /// <returns></returns>
        public int delete_Det(int DetId)
        {
            return dal.delete_Det(DetId);
        }

        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public  int update_Det(DetailsInfoModel model)
        {
            return dal.update_Det(model);
        }

        }
}
