using CarQueryWebNewDBHelper.DAL;
using CarQueryWebNewDBHelper.Entity;
using System;
using System.Data;

namespace CarQueryWebNewDBHelper.BLL
{
    public class CheckPointManagerBLL
    {
        public Tuple<DataTable, int> GetTUNITs(int pageSize, int pageCount, string UnitName)
        {
            return new CheckPointManagerDAL().GetTUNITs(pageSize, pageCount, UnitName);
        }

        public Tuple<DataSet, int> QueryJCZ()
        {
            return new CheckPointManagerDAL().QueryJCZ();
        }
        public Tuple<DataSet, int> GetBasicInfo(string cunitCode)
        {
            return new CheckPointManagerDAL().GetBasicInfo(cunitCode);
        }

        public Tuple<DataSet, int> GetQualificationInfo(string orgCode)
        {
            return new CheckPointManagerDAL().GetQualificationInfo(orgCode);
        }
        public DataSet GetCunitCode()
        {
            return new CheckPointManagerDAL().GetCunitCode();
        }

        public Tuple<Int32, string> TUNITInsert(TUNIT tunit)
        {
            return new CheckPointManagerDAL().TUNITInsert(tunit);
        }
        public Tuple<Int32, string> QualificationInsert(TUNIT tunit)
        {
            return new CheckPointManagerDAL().QualificationInsert(tunit);
        }

        public Tuple<Int32, string> TUNITDelete(string cunitCode)
        {
            return new CheckPointManagerDAL().TUNITDelete(cunitCode);
        }
    }
}
