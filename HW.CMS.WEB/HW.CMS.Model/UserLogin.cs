using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.Model
{
    public class UserLogin
    {
        public int Userid { get; set; }
        public int UserNum { get; set; }
        public string Userpwd { get; set; }
        public int UserRole { get; set; }
    }
}
