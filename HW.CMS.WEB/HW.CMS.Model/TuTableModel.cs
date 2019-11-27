using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
   public class TuTableModel
    {
        private int _Tuid;

        public int Tuid
        {
            get { return _Tuid; }
            set { _Tuid = value; }
        }

        private string _TuCity;

        public string TuCity
        {
            get { return _TuCity; }
            set { _TuCity = value; }
        }
        private int _TuValue;

        public int TuValue
        {
            get { return _TuValue; }
            set { _TuValue = value; }
        }


    }
}
