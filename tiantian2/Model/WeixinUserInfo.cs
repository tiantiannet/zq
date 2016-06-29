using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class WeixinUserInfo
    {
        private String weixinUserInfo;

        public WeixinUserInfo()
        {
 
        }

        public WeixinUserInfo(String weixinUserInfo)
        {
            this.weixinUserInfo = weixinUserInfo;
        }

        public String WeixinUser
        {
            get { return weixinUserInfo; }
            set { weixinUserInfo = value; }
        }
    }
}
