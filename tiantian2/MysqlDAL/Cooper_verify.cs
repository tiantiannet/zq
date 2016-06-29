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
    /// 数据提取类
    /// </summary>
    public class Cooper_verify : ICooper_verify
    {
        /// <summary>
        /// POJO类初始化SQL语句,此处仅针对Mysql
        /// </summary>
        private const String SQL_SELECT_Cooper_verify = "select * from corp where username =  ";

        private const String SQL_UPDATE_Cooper_verify = @"UPDATE corp set username = {0} and corpname = {1} 
            and idphone = {2} and corptelephone = {3} and corpweixin = {4} and selectprov ={5} and selectindustry = {6}";
        /// <summary>
        /// POJO类 
        /// </summary>
        private Cooper_verifyInfo cooper_verifyInfo = null;

        /// <summary>
        /// 初始化数据类实体，填充POJO类
        /// </summary>
        /// <param name="corpname">初始化索引</param>
        public void Make(String username)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_SELECT_Cooper_verify + "'" + username + "'", ref record);
            //若记录存在，填充POJO
            if (record.Tables.Count == 1 && record.Tables[0].Rows.Count != 0)
            {
                //生成POJO类
                Cooper_verifyInfo uci = new Cooper_verifyInfo();

                uci.Corpname = record.Tables[0].Rows[0]["corpname"].ToString();
                uci.Username = record.Tables[0].Rows[0]["username"].ToString();
                uci.Corpweixin = record.Tables[0].Rows[0]["corpweixin"].ToString();
                uci.Idphone = record.Tables[0].Rows[0]["idphone"].ToString();
                uci.Selectindustry = record.Tables[0].Rows[0]["selectindustry"].ToString();
                uci.Selectprov = record.Tables[0].Rows[0]["selectprov"].ToString();

                this.cooper_verifyInfo = uci;
            }
        }

        public void InsertCorp(String username,String corpname, String idphone, 
            String corptelephone, String corpweixin, String selectprov, String selectindustry)
        {
           // MySqlDBCore.Execute(String.Format(SQL_UPDATE_Cooper_verify, username, corpname, corptelephone, idphone,corpweixin, selectprov, selectindustry)); 
            String sql = "";

            sql = "UPDATE person set corpname = '" + corpname + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set corptelephone = '" + corptelephone + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set idphone = '" + idphone + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set corpweixin = '" + corpweixin + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set selectprov = '" + selectprov + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);

            sql = "UPDATE person set selectindustry = '" + selectindustry + "'" + "where username='" + username + "'";
            MySqlDBCore.Execute(sql);
        }
        /// <summary>
        /// 获取公司id
        /// </summary>
        /// <returns>公司id</returns>
        public String getUsername()
        {
            return this.cooper_verifyInfo.Username;
        }

        /// <summary>
        /// 获取公司名
        /// </summary>
        /// <returns>公司名</returns>
        public String getCorpname()
        {
            return this.cooper_verifyInfo.Corpname;
        }

        /// <summary>
        /// 获取招聘人员手机号
        /// </summary>
        /// <returns>公司id</returns>
        public String getIdphone()
        {
            return this.cooper_verifyInfo.Idphone;
        }

        /// <summary>
        /// 获取公司电话
        /// </summary>
        /// <returns>公司电话</returns>
        public String getCorptelephone()
        {
            return this.cooper_verifyInfo.Corptelephone;
        }

        /// <summary>
        /// 获取公司微信
        /// </summary>
        /// <returns>公司微信</returns>
        public String getCorpweixin()
        {
            return this.cooper_verifyInfo.Corpweixin;
        }

        /// <summary>
        /// 获取公司所在省份
        /// </summary>
        /// <returns>公司所在省份</returns>
        public String getSelectprov()
        {
            return this.cooper_verifyInfo.Selectprov;
        }

        /// <summary>
        /// 获取公司行业
        /// </summary>
        /// <returns>公司行业</returns>
        public String getSelectindustry()
        {
            return this.cooper_verifyInfo.Selectindustry;
        }
    }
}
