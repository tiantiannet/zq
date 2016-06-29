using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using System.Data;
using DBUtility;
using Model;

namespace MysqlDAL
{
    /// <summary>
    /// 数据类实体
    /// 记得要实现IDAL中对应的接口
    /// </summary>
    public class One:IOne
    {
        /// <summary>
        /// POJO类初始化SQL语句,此处仅针对Mysql
        /// </summary>
        private const String SQL_SELECT_ONE = "select name from student where password = ";

        /// <summary>
        /// POJO类 
        /// </summary>
        private OneInfo oneInfo = null;

        /// <summary>
        /// 初始化数据类实体，填充POJO类
        /// </summary>
        /// <param name="password">初始化索引</param>
        public void Make(String password)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_ONE + "'" + password + "'", ref record);

            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                //生成POJO类
                this.oneInfo = new OneInfo(record.Tables[0].Rows[0]["name"].ToString(), password);
            }
        }

        /// <summary>
        /// 数据类实体的业务接口
        /// </summary>
        /// <returns></returns>
        public  String  getName()
        {
            return oneInfo.Name;
        }

        /// <summary>
        /// 返回业务类中的POJO类
        /// </summary>
        /// <returns>POJO类</returns>
        public OneInfo GetOne()
        {
            return this.oneInfo;
        }
    }
}
