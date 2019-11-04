using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.CMS.DAL
{
   public  class DBHelper
    {
        //读取连接字符串
        public static readonly string connStr = ConfigurationManager.ConnectionStrings["CompanyManagementConnectionString"].ConnectionString;
        /// <summary>
        /// 查询首行首列的方法
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlParameters"></param>
        /// <returns></returns>
        public static object ExcuteScalar(string sql, params SqlParameter[] sqlParameters)
        {
            //创建连接
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                //创建命令
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    //判断连接是否打开，如果关闭状态，则打开，如果打开状态，直接跳过，执行命令
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();
                    }
                    //添加参数
                    command.Parameters.AddRange(sqlParameters);
                    //返回结果
                    return command.ExecuteScalar();
                }
            }
        }

        /// <summary>
        /// 查询列表结果
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlParameters"></param>
        /// <returns></returns>
        public static SqlDataReader ExcuteSqlDataReader(string sql, params SqlParameter[] sqlParameters)
        {
            //创建连接
            SqlConnection connection = new SqlConnection(connStr);
            //创建命令
            using (SqlCommand command = new SqlCommand(sql, connection))
            {
                //执行
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                //添加参数
                command.Parameters.AddRange(sqlParameters);
                //返回结果,及时关闭掉连接
                return command.ExecuteReader(CommandBehavior.CloseConnection);
            }
        }

        /// <summary>
        /// 执行插入，删除，更新的方法
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlParameters"></param>
        /// <returns></returns>
        public static int ExcuteSqlNonQuery(string sql, SqlParameter[] sqlParameters)
        {
            //创建连接
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                //创建命令
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    //执行
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();
                    }
                    //添加参数
                    command.Parameters.AddRange(sqlParameters);
                    //返回结果,及时关闭掉连接
                    return command.ExecuteNonQuery();
                }
            }
        }


    }
}
