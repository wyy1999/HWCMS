using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HW.CMS.DAL;
using HW.CMS.Model;
using Newtonsoft.Json;

namespace HW.CMS.WEB
{
    /// <summary>
    /// Handler 的摘要说明
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            List<TuTableModel> points = TuTableDal.SalList();
            var newPoints = points.Select(r => new { name = r.TuCity, value = r.TuValue });
            string json = JsonConvert.SerializeObject(newPoints);
            context.Response.Write(json);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}