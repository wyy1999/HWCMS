using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    /// <summary>
    /// 研发表
    /// </summary>
  public  class ResearchInfoModel
    {
        public int ResId { get; set; }
        public string Resname { get; set; }
        public string ResIntroduce { get; set; }
        public string ResGroup { get; set; }
        public string BeginTime { get; set; }
        public string EndTime { get; set; }
        public decimal ResMoney { get; set; }
        public int ResState { get; set; }

        //string类型
       

        public string ResStateString
        {
            get {
                if (ResState == 1)
                {
                    return "未完成";
                }
                else {
                    return "已完成";
                }
            }            
        }

    }
}
