using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IUserMana
    {
        void Make();

        String getUserInfo();
        UserManaInfo GetUserManaInfo();

        void delUserInfo(String username);
    }
}
