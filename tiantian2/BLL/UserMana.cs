using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;

namespace BLL
{
    public class UserMana
    {
        IUserMana dal = DALFactory.DataAccess.GetUserMana();

        public UserMana()
        {
            dal.Make();
        }

        public String getUserInfo()
        {
            return dal.getUserInfo();
        }

        public void delUserInfo(String username)
        {
            dal.delUserInfo(username);
        }
    }
}
