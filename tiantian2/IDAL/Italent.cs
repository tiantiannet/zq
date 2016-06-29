using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface Italent
    {
        /// <summary>
        /// 构造函数
        /// </summary>
        void Make();

        List<talentInfo> getInfo();
    }
}
