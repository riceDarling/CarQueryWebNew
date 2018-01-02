using CarQueryWebNewDBHelper.DAL;


/// <summary>
/// 首页的调用方法
/// </summary>
namespace CarQueryWebNewDBHelper.BLL
{
    public class IndexBLL
    {

        /// <summary>
        /// 获取检测站描点信息
        /// </summary>
        public string GetJianCeZhanMapData( string name,string pageNumber,string pagePagesize )
        {
            return new IndexDAL().GetJianCeZhanMapData(name, pageNumber, pagePagesize);
        }

        /// <summary>
        /// 获取油汽回收的描点信息JYZ_UNIT
        /// </summary>
        public string GetMapYouQiGuanLiData(string name, string pageNumber, string pagePagesize)
        {
            return new IndexDAL().GetMapYouQiGuanLiData(name, pageNumber, pagePagesize);
        }

        /// <summary>
        /// 获取遥感检测的描点信息
        /// </summary>
        public string GetMapYaoGanJianCeData(string name, string pageNumber, string pagePagesize)
        {
            return new IndexDAL().GetMapYaoGanJianCeData(name, pageNumber, pagePagesize);
        }

        /// <summary>
        /// 获取首页饼图信息
        /// </summary>
        public string GetChartData(string lastdate, string nextdate, string UnitCode)
        {
            return new IndexDAL().GetChartData(lastdate, nextdate, UnitCode);
        }

    }
}
