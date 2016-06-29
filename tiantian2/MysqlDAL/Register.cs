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
    public class Register : IRegister
    {
        private const String SQL_CHECK_REGISTER = "select * from user where username = ";

        private const String SQL_ADD_USER = @"INSERT INTO `user` (`username`, `password`, `type`) VALUES ";

        private const String SQL_ADD_NULL_COMPANY_ST = @"INSERT INTO `corp` (`username`, `corpname`, `idphone`, `corptelephone`, `corpweixin`, `selectprov`) VALUES ('";
        private const String SQL_ADD_NULL_COMPANY_ED = @"', '', '', '', '', '')";
        private RegisterInfo registerInfo = null;

        public void Make(string username, string password, string type)
        {
            //查询结果容器
            DataSet record = new DataSet();
            //从索引中补全语句
            MySqlDBCore.Execute(SQL_CHECK_REGISTER + "'" + username + "'", ref record);

            if (record.Tables.Count != 0)
            {
                if (record.Tables[0].Rows.Count != 0)
                {
                    this.registerInfo = new RegisterInfo("user already exist");
                    return;
                }
                else
                {
                    MySqlDBCore.Execute(SQL_ADD_USER + "(" + "'" + username + "'" + "," + "'" + password + "'" + "," + "'" + type + "'" + ")");
                    if(type.Equals("1"))
                        MySqlDBCore.Execute(SQL_ADD_NULL_COMPANY_ST + username + SQL_ADD_NULL_COMPANY_ED);
                    else
                        MySqlDBCore.Execute("");
                    //this.registerInfo = new RegisterInfo(SQL_ADD_USER + "(" + "'" + username + "'" + "," + "'" + password + "'" + "," + "'" + type + "'" + ")");
                    this.registerInfo = new RegisterInfo("succeed");
                    return;
                }
            }
            this.registerInfo = new RegisterInfo("error");
            
        }

        public string GetResult()
        {
            return registerInfo.Result;
        }
    }
}
