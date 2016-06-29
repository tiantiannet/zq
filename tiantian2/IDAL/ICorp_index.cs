using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ICorp_index
    {
        void Make(String username);

        Corp_indexInfo getInfo(); 
    }
}
