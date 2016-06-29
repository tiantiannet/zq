using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALFactory;
using IDAL;
using Model;

namespace BLL
{
    public class IndexMana
    {
        IIndexMana dal = DALFactory.DataAccess.GetIndexMana();
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name='username'>用户id</param>
        public IndexMana(String username)
        {
            //初始化数据类实体
            dal.Make(username);
        }
        public String make()
        { 
            IndexManaInfo imi = dal.getInfo();
            String back = imi.name;
            return back;
        }
    }
}
