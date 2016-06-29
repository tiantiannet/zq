using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class UserManaInfo
    {
        private String userInfo;

        public UserManaInfo()
        {
 
        }

        public UserManaInfo(String userInfo)
        {
            this.userInfo = userInfo;
        }

        public String UserInfo
        {
            get {return userInfo ;}
            set { userInfo = value; }
        }

    }
}
