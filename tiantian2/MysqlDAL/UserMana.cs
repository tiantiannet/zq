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
    public class UserMana:IUserMana
    {
        private const String SQL_SELECT_ALL_USER = "select * from person";
        private const String SQL_DELETE_USER = "delete from person where username =";
        private UserManaInfo umInfo = null;

        public void Make()
        {
            DataSet record = new DataSet();
            MySqlDBCore.Execute(SQL_SELECT_ALL_USER, ref record);

            if (record.Tables.Count != 0 && record.Tables[0].Rows.Count != 0)
            {
                String result = "";
                for (int i = 0; i < record.Tables[0].Rows.Count; i ++ )
                {
                    result += "<tr>";
                    result += "<td>" + record.Tables[0].Rows[i]["username"].ToString() +"</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["useremail"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["userrealyname"].ToString() + "</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["userage"].ToString() + "</td>";
                    if (record.Tables[0].Rows[i]["usersex"].ToString().Equals("1"))
                        result += "<td>男</td>";
                    else
                        result += "<td>女</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["userphone"].ToString() + "</td>";

                    if (record.Tables[0].Rows[i]["workWantedStatus"].ToString().Equals("1"))
                        result += "<td>是</td>";
                    else
                        result += "<td>否</td>";

                    result += "<td></td>";
                    if (record.Tables[0].Rows[i]["useremail"].ToString().Equals(null))
                        result += "<td>否</td>";
                    else
                        result += "<td>是</td>";

                    if (record.Tables[0].Rows[i]["userphone"].ToString().Equals(null))
                        result += "<td>否</td>";
                    else
                        result += "<td>是</td>";

                    result += "<td>是</td>";
                    result += "<td>" + record.Tables[0].Rows[i]["time"].ToString() + "</td>";
                    result += "<td><button runat='server' id='viewBtn' type='button' class='btn btn-primary btn-xs' onclick='viewBtn()'>查看</button><button runat='server' id='editBtn' type='button' class='btn btn-success btn-xs'>编辑</button><button runat='server' id='deleteBtn' type='button' class='btn btn-danger btn-xs' onclick='delBtn()'>删除</button><a href='#' onclick='tologin()'>登录</a><button runat='server' id='memoBtn' type='button' class='btn btn-primary btn-xs'>编辑备注</button></td>";
                    result += "<td></td>";                    
                    result += "</tr>";
                }
                this.umInfo = new UserManaInfo();
                umInfo.UserInfo = result;
            }
        }
        public UserManaInfo GetUserManaInfo()
        {
            return this.umInfo;
        }

        public String getUserInfo()
        {
            return this.umInfo.UserInfo;
        }

        public void delUserInfo(String username)
        {
            MySqlDBCore.Execute(SQL_DELETE_USER + "'" + username + "'");
        }
    }
}
