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
        private int _InfoId;

        public int InfoId
        {
            get { return _InfoId; }
            set { _InfoId = value; }
        }
        private decimal _AllMoney;

        public decimal AllMoney
        {
            get { return _AllMoney; }
            set { _AllMoney = value; }
        }

        private decimal _UseMoney;

        public decimal UseMoney
        {
            get { return _UseMoney; }
            set { _UseMoney = value; }
        }

        private decimal _OverMoney;

        public decimal OverMoney
        {
            get { return _OverMoney; }
            set { _OverMoney = value; }
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
        /// 负责人
        /// </summary>
        private string _InfoName;

        public string InfoName
        {
            get { return _InfoName; }
            set { _InfoName = value; }
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

    }
}
