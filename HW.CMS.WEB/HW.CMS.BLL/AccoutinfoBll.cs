﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using HW.CMS.DAL;
using HW.CMS.Model;

namespace HW.CMS.BLL
{
    public class AccoutinfoBll
    {
        AccoutInfoDal dal = new AccoutInfoDal();
        public List<AccoutInfoModel> selectall()
        {
            return dal.selectAll();
        }
        public int Add(AccoutInfoModel model)
        {
            return dal.Add(model);
        }
        public int update(AccoutInfoModel model)
        {
            return dal.update(model);
        }
        public int delete(int AccoutId)
        {
            return dal.delete(AccoutId);
        }
        public AccoutInfoModel sel1()
        {
            return dal.sel1();
        }
        public AccoutInfoModel sel2()
        {
            return dal.sel2();
        }
        public AccoutInfoModel sel3()
        {
            return dal.sel3();
        }
        public AccoutInfoModel sel4()
        {
            return dal.sel4();
        }
    }
}
