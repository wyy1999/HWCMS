using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HW.CMS.Model;
using System.Data;
using System.Data.SqlClient;

namespace HW.CMS.DAL
{
    public class InfoTableDal
    {
        /// <summary>
        /// 查询
        /// </summary>
        /// <returns></returns>
        public static List<InfoTable> selectAll(string InfoName="",int DepId=0,int DutyId=0,string InfoSex="",int InfoState=0)
        {
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                    new SqlParameter("@InfoName",InfoName),
                    new SqlParameter("@DepId",DepId),
                    new SqlParameter("@DutyId",DutyId),
                    new SqlParameter("@InfoState",InfoState),
                    new SqlParameter("@InfoSex",InfoSex)

            };
            DataTable table = DBHelper.Query("sel_InfoTable", sqlParameters);
            List<InfoTable> list = new List<InfoTable>();
            foreach (DataRow row in table.Rows)
            {
                
                    InfoTable accout = new InfoTable()
                    {
                        InfoId = Convert.ToInt32(row["InfoId"]),
                        InfoName = Convert.ToString(row["InfoName"]),
                        InfoAge = Convert.ToInt32(row["InfoAge"]),
                        InfoSex = Convert.ToString(row["InfoSex"]),
                        InfoDate = Convert.ToString(row["InfoDate"]),
                        InfoIdcard = Convert.ToString(row["InfoIdcard"]),
                        InfoTel = Convert.ToString(row["InfoTel"]),
                        InfoAddress = Convert.ToString(row["InfoAddress"]),
                        InfoEmail = Convert.ToString(row["InfoEmail"]),
                        InfoEntrytime = Convert.ToString(row["InfoEntrytime"]),
                        InfoLeavetime = Convert.ToString(row["InfoLeavetime"]),
                        InfoWorkyears = Convert.ToString(row["InfoWorkyears"]),
                        DepId = Convert.ToInt32(row["DepId"]),
                        DutyId = Convert.ToInt32(row["DutyId"]),
                        Userid = Convert.ToInt32(row["Userid"]),
                        InfoSalary = Convert.ToInt32(row["InfoSalary"]),
                        InfoState = Convert.ToInt32(row["InfoState"]),
                        Dep=Convert.ToString(row["Dep"]),
                        DutyName= Convert.ToString(row["DutyName"]),
                        UserName= Convert.ToString(row["UserName"]),
                    };
                    list.Add(accout);
                
            }
            return list;
        }


        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(InfoTable model)
        {
            string sql = " insert into InfoTable values(@InfoName,@InfoAge,@InfoSex,@InfoDate,@InfoIdcard,@InfoTel,@InfoAddress,@InfoEmail,@InfoEntrytime,@InfoLeavetime,@InfoWorkyears,@DepId,@DutyId,@Userid,@InfoSalary,@InfoState)";
            ///创建命令
            SqlParameter[] sqlParameters = new SqlParameter[]
           {

               new SqlParameter("@InfoName",model.InfoName),
               new SqlParameter("@DepId",model.DepId),               
               new SqlParameter("@DutyId",model.DutyId),             
               new SqlParameter("@InfoAddress",model.InfoAddress),
                new SqlParameter("@InfoAge",model.InfoAge),
               new SqlParameter("@InfoDate",model.InfoDate),
               new SqlParameter("@InfoEmail",model.InfoEmail),
               new SqlParameter("@InfoEntrytime",model.InfoEntrytime),            
               new SqlParameter("@InfoIdcard",model.InfoIdcard),
               new SqlParameter("@InfoLeavetime",model.InfoLeavetime),
               new SqlParameter("@InfoWorkyears",model.InfoWorkyears),
               new SqlParameter("@InfoSalary",model.InfoSalary),
               new SqlParameter("@InfoSex",model.InfoSex),
               new SqlParameter("@InfoState",model.InfoState),
               new SqlParameter("@InfoTel",model.InfoTel),
                new SqlParameter("@Userid",model.Userid),


          };
            ///执行命令  返回结果
            int result = DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
            int res = 0;
            ///执行命令  返回结果

            if (result != 0)
            {
                res = 100;
                return res;
            }
            else
            {
                res = DBHelper.ExcuteSqlNonQuery(sql, sqlParameters);
            }

            return res;
        }

        /// 删除
        /// </summary>
        /// <param name="DetId"></param>
        /// <returns></returns>
        public int delete_Info(int InfoId)
        {
            string sql = " delete from InfoTable where InfoId=@InfoId";
            SqlParameter[] par = new SqlParameter[]
            {
                new SqlParameter("@InfoId",InfoId)
            };
            int result = DBHelper.ExcuteSqlNonQuery(sql, par);
            return result;
        }


        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int update_Info(InfoTable model)
        {
            string sql = "update InfoTable set InfoName=@InfoName,InfoAge=@InfoAge,InfoSex=@InfoSex,InfoDate=@InfoDate,InfoIdcard=@InfoIdcard,InfoTel=@InfoTel,InfoAddress=@InfoAddress,InfoEmail=@InfoEmail,InfoEntrytime=@InfoEntrytime,InfoLeavetime=@InfoLeavetime,InfoWorkyears=@InfoWorkyears,DepId=@DepId,DutyId=@DutyId,Userid=@Userid,InfoSalary=@InfoSalary,InfoState=@InfoState where InfoId=@InfoId";
            SqlParameter[] par = new SqlParameter[]
            {
                 new SqlParameter("@InfoId",model.InfoId),
               new SqlParameter("@InfoName",model.InfoName),
               new SqlParameter("@DepId",model.DepId),
               new SqlParameter("@DutyId",model.DutyId),
            
               new SqlParameter("@InfoAddress",model.InfoAddress),
                new SqlParameter("@InfoAge",model.InfoAge),
               new SqlParameter("@InfoDate",model.InfoDate),
               new SqlParameter("@InfoEmail",model.InfoEmail),
               new SqlParameter("@InfoEntrytime",model.InfoEntrytime),
               new SqlParameter("@InfoIdcard",model.InfoIdcard),
               new SqlParameter("@InfoLeavetime",model.InfoLeavetime),
               new SqlParameter("@InfoWorkyears",model.InfoWorkyears),
               new SqlParameter("@InfoSalary",model.InfoSalary),
               new SqlParameter("@InfoSex",model.InfoSex),
               new SqlParameter("@InfoState",model.InfoState),
               new SqlParameter("@InfoTel",model.InfoTel),
                new SqlParameter("@Userid",model.Userid),
            };
            return DBHelper.ExcuteSqlNonQuery(sql, par);

        }

    }
}
