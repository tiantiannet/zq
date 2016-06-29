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
    public class WeixinUser:IWeixinUser
    {
        private const String SQL_SELECT_ALL_WEIXINUSER = "select * from weixin_user";
        private WeixinUserInfo wxInfo = null;

        public void Make()
        {
            DataSet record = new DataSet();
            MySqlDBCore.Execute(SQL_SELECT_ALL_WEIXINUSER, ref record);

            if (record.Tables.Count != 0 && record.Tables[0].Rows.Count != 0)
            {
                String result = "";
                for (int i = 0; i < record.Tables[0].Rows.Count; i++)
                {
                    result += "<tr>";
                    result += "<td>" + record.Tables[0].Rows[i]["id"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["username"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["offerdirection"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["createTime"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["updateTime"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["type"].ToString() + "</td>";
                    result += "</tr>";
                }
                this.wxInfo = new WeixinUserInfo();
                wxInfo.WeixinUser = result;
            }
        }
        public WeixinUserInfo GetWeixinUserInfo()
        {
            return this.wxInfo;
        }

        public String getWeixinUserInfo()
        {
            return this.wxInfo.WeixinUser;
        }
    }
}
