using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
   public class DutyInfoModel
    {
        private int _DutyId;

        public int DutyId
        {
            get { return _DutyId; }
            set { _DutyId = value; }
        }

        private string _DutyName;

        public string DutyName
        {
            get { return _DutyName; }
            set { _DutyName = value; }
        }


    }
}
