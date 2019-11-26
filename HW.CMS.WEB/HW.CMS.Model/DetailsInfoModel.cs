using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    /// <summary>
    /// 研发详情表
    /// </summary>
   public class DetailsInfoModel
    {
        private int _DetId;

        public int DetId
        {
            get { return _DetId; }
            set { _DetId = value; }
        }
        private string _DetName;

        public string DetName
        {
            get { return _DetName; }
            set { _DetName = value; }
        }

        private string _DetContent;

        public string DetContent
        {
            get { return _DetContent; }
            set { _DetContent = value; }
        }



        private decimal _UseMoney;

        public decimal UseMoney
        {
            get { return _UseMoney; }
            set { _UseMoney = value; }
        }

      
        private string _DetPlan;

        public string DetPlan
        {
            get { return _DetPlan; }
            set { _DetPlan = value; }
        }

        private int _ResId;

        public int ResId
        {
            get { return _ResId; }
            set { _ResId = value; }
        }

      
        /// <summary>
        /// 研发名称
        /// </summary>
        private string _Resname;

        public string Resname
        {
            get { return _Resname; }
            set { _Resname = value; }
        }


        /// <summary>
        /// 研发内容
        /// </summary>
        private string _ResIntroduce;

        public string ResIntroduce
        {
            get { return _ResIntroduce; }
            set { _ResIntroduce = value; }
        }
        private string _ResGroup;

        public string ResGroup
        {
            get { return _ResGroup; }
            set { _ResGroup = value; }
        }
        private decimal _ResMoney;

        public decimal ResMoney
        {
            get { return _ResMoney; }
            set { _ResMoney = value; }
        }


    }
}
