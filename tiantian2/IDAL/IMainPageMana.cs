using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IMainPageMana
    {
        void Make();

        String getregUserCount();
        String getregClientCount();
        String getchaCount();
        String getmoneyCount();
        String getnewUserCount();
        String getnewClientCount();
        String getnewChaCount();
        String getnewMoneyCount();
        MainPageManaInfo GetMainPageManaInfo();
    }

    
}
