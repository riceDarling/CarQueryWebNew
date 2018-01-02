using System;
using System.Collections.Generic;
using System.Data;

/// <summary>
/// 首页的调用方法
/// </summary>
namespace CarQueryWebNewDBHelper.DAL
{
    public class IndexDAL
    {

        /// <summary>
        /// 获取检测站描点信息
        /// </summary>
        public string GetJianCeZhanMapData(string name, string pageNumber, string pageSize)
        {
            string UnitName = name;
            int pagenumber = 0, pagesize = 0;
            if (!string.IsNullOrEmpty(pageNumber) && !string.IsNullOrEmpty(pageSize))
            {

                pagenumber = int.Parse(pageNumber) - 1;
                pagesize = int.Parse(pageSize);
            }
            string where = "";


            if (!string.IsNullOrEmpty(UnitName))
            {
                where += " and CUNITNAME LIKE '%" + UnitName + "%'";
            }
            try
            {
                if (pagesize == 0)
                {
                    string SQL = "SELECT CUNITCODE,CUNITNAME,ISLOCK,CDIRECTOR,CPHONE,CMEMO FROM TUNIT WHERE 1=1 and CMEMO is not null  ";

                    DataTable dt = OracleHelper.ExecuteDataTable(CommandType.Text, SQL + where);
                    return CarQueryWebNewDBHelper.Common.JsonHelper.DataTableToJson(dt);
                }
                else
                {
                    string SQL = "SELECT NTEMP.*FROM(SELECT TEMP.*, ROWNUM RN FROM(SELECT * FROM TUNIT WHERE 1=1 " + where + " ORDER BY CUNITCODE) TEMP) NTEMP WHERE NTEMP.RN >= " + (pagenumber * pagesize) + " AND NTEMP.RN <=" + ((pagenumber + 1) * pagesize);
                    string sqlStr1 = " select count(1) from TUNIT ";
                    DataTable dt = OracleHelper.ExecuteDataTable(CommandType.Text, SQL);
                    int num = Convert.ToInt32(OracleHelper.ExecuteScalar(System.Data.CommandType.Text, sqlStr1));
                    string json = "{\"rows\":" + CarQueryWebNewDBHelper.Common.JsonHelper.DataTableToJson(dt) + ",\"total\":" + num + "}";
                    return json;
                }
            }
            catch
            {
                return "";
            }
        }

        /// <summary>
        /// 获取油汽回收的描点信息JYZ_UNIT
        /// </summary>
        public string GetMapYouQiGuanLiData(string name, string pageNumber, string pageSize)
        {
            string UnitName = name;
            int pagenumber = 0, pagesize = 0;
            if (!string.IsNullOrEmpty(pageNumber) && !string.IsNullOrEmpty(pageSize))
            {

                pagenumber = int.Parse(pageNumber) - 1;
                pagesize = int.Parse(pageSize);
            }
            string where = "";


            if (!string.IsNullOrEmpty(UnitName))
            {
                where += " and CUNITNAME LIKE '%" + UnitName + "%'";
            }
            try
            {
                if (pagesize == 0)
                {
                    string SQL = "SELECT CUNITCODE,CUNITNAME,ISLOCK,CDIRECTOR,CPHONE,CMEMO FROM TUNIT WHERE 1=1 and CMEMO is not null  ";

                    DataTable dt = OracleHelper.ExecuteDataTable(CommandType.Text, SQL + where);
                    return CarQueryWebNewDBHelper.Common.JsonHelper.DataTableToJson(dt);
                }
                else
                {
                    string SQL = "SELECT NTEMP.*FROM(SELECT TEMP.*, ROWNUM RN FROM(SELECT * FROM TUNIT WHERE 1=1 " + where + " ORDER BY CUNITCODE) TEMP) NTEMP WHERE NTEMP.RN >= " + (pagenumber * pagesize) + " AND NTEMP.RN <=" + ((pagenumber + 1) * pagesize);
                    string sqlStr1 = " select count(1) from TUNIT ";
                    DataTable dt = OracleHelper.ExecuteDataTable(CommandType.Text, SQL);
                    int num = Convert.ToInt32(OracleHelper.ExecuteScalar(System.Data.CommandType.Text, sqlStr1));
                    string json = "{\"rows\":" + CarQueryWebNewDBHelper.Common.JsonHelper.DataTableToJson(dt) + ",\"total\":" + num + "}";
                    return json;
                }
            }
            catch
            {
                 return "";
            }
        }


        /// <summary>
        /// 获取遥感检测的描点信息
        /// </summary>
        public string GetMapYaoGanJianCeData(string name, string pageNumber, string pageSize)
        {
            string UnitName = name;
            int pagenumber = 0, pagesize = 0;
            if (!string.IsNullOrEmpty(pageNumber) && !string.IsNullOrEmpty(pageSize))
            {

                pagenumber = int.Parse(pageNumber) - 1;
                pagesize = int.Parse(pageSize);
            }
            string where = "";


            if (!string.IsNullOrEmpty(UnitName))
            {
                where += " and MOVEENFORCE.CNUMBERPLATE LIKE '%" + UnitName + "%'";
            }

            try
            {
                if (pagesize == 0)
                {
                    string SQL = "SELECT MOVEENFORCE.*,YG_UNIT.ID as MPID,YG_UNIT.ADDRESS as MPADDRESS FROM MOVEENFORCE left join YG_UNIT on MOVEENFORCE.ID = YG_UNIT.EXT_1 WHERE 1=1 and YG_UNIT.ADDRESS is not null ";

                    DataTable dt = OracleHelper.ExecuteDataTable(CommandType.Text, SQL + where);
                    string json = CarQueryWebNewDBHelper.Common.JsonHelper.DataTableToJson(dt);
                    return json;
                }
                else
                {
                    string SQL = "SELECT NTEMP.*FROM(SELECT TEMP.*, ROWNUM RN FROM(SELECT MOVEENFORCE.*,YG_UNIT.ID as MPID,YG_UNIT.ADDRESS as MPADDRESS FROM MOVEENFORCE left join YG_UNIT on MOVEENFORCE.ID = YG_UNIT.EXT_1 WHERE 1=1 " + where + " ) TEMP) NTEMP WHERE NTEMP.RN >= " + (pagenumber * pagesize) + " AND NTEMP.RN <=" + ((pagenumber + 1) * pagesize);
                    string sqlStr1 = " select count(1) from MOVEENFORCE ";
                    DataTable dt = OracleHelper.ExecuteDataTable(CommandType.Text, SQL);
                    int num = Convert.ToInt32(OracleHelper.ExecuteScalar(System.Data.CommandType.Text, sqlStr1));
                    string json = "{\"rows\":" + CarQueryWebNewDBHelper.Common.JsonHelper.DataTableToJson(dt) + ",\"total\":" + num + "}";
                    return json;
                }
            }
            catch
            {
                return "";
            }
        }

        /// <summary>
        /// 获取首页饼图信息
        /// </summary>
        public string GetChartData(string lastdate, string nextdate, string UnitCode)
        {
            int gas1all = 0;
            int gas1ok = 0;
            int gas2all = 0;
            int gas2ok = 0;
            int diesel1all = 0;
            int diesel1ok = 0;
            int diesel2all = 0;
            int diesel2ok = 0;
            try
            {
               
                string sqlgas1 = " and CheckMethod='B'";
                string sqlgas2 = " and CheckMethod='A'";
                string sqldiesel1 = " and CheckMethod='G'";
                string sqldiesel2 = " and CheckMethod='F'";
                string sqlstr = "SELECT CHECKRESULT FROM CHECKRESULT where 1=1 ";
                string temp = " and checkdate>='" + lastdate + " 00:00:00" + "' and checkdate<= '" + nextdate + " 23:59:59'";
                if (!string.IsNullOrEmpty(UnitCode))
                {

                    if (UnitCode.Length == 3)
                    {
                        temp += " and UnitCode='" + UnitCode + "'";
                    }
                    else if (UnitCode.Length == 6)
                    {
                        temp += " and AreaCode='" + UnitCode + "'";
                    }


                }
                System.Collections.ArrayList dsgas1 = OracleHelper.GetAllData(sqlstr + sqlgas1 + temp);
                System.Collections.ArrayList dsgas2 = OracleHelper.GetAllData(sqlstr + sqlgas2 + temp);
                System.Collections.ArrayList dsdiesel1 = OracleHelper.GetAllData(sqlstr + sqldiesel1 + temp);
                System.Collections.ArrayList dsdiesel2 = OracleHelper.GetAllData(sqlstr + sqldiesel2 + temp);
                for (int i = 0; i < dsgas1.Count; i++)
                {
                    gas1all++;
                    Dictionary<String, String> result = (Dictionary<String, String>)dsgas1[i];
                    string value = "";
                    result.TryGetValue("CHECKRESULT", out value);
                    if (value.Equals("1"))
                    {
                        gas1ok++;
                    }
                }

                for (int i = 0; i < dsgas2.Count; i++)
                {
                    gas2all++;
                    Dictionary<String, String> result = (Dictionary<String, String>)dsgas2[i];
                    string value = "";
                    result.TryGetValue("CHECKRESULT", out value);
                    if (value.Equals("1"))
                    {
                        gas2ok++;
                    }
                }

                for (int i = 0; i < dsdiesel1.Count; i++)
                {
                    diesel1all++;
                    Dictionary<String, String> result = (Dictionary<String, String>)dsdiesel1[i];
                    string value = "";
                    result.TryGetValue("CHECKRESULT", out value);
                    if (value.Equals("1"))
                    {
                        diesel1ok++;
                    }
                }

                for (int i = 0; i < dsdiesel2.Count; i++)
                {
                    diesel2all++;
                    Dictionary<String, String> result = (Dictionary<String, String>)dsdiesel2[i];
                    string value = "";
                    result.TryGetValue("CHECKRESULT", out value);
                    if (value.Equals("1"))
                    {
                        diesel2ok++;
                    }
                }
                string aaa = " {\"gas1ok\": \"" + gas1ok + "\" ,\"gas1all\": \"" + gas1all + "\",\"gas2ok\": \"" + gas2ok + "\" ,\"gas2all\": \"" + gas2all + "\", \"diesel1all\": \"" + diesel1all + "\" ,\"diesel1ok\": \"" + diesel1ok + "\", \"diesel2all\": \"" + diesel2all + "\" ,\"diesel2ok\": \"" + diesel2ok + "\"}";
                return aaa;
            }
            catch
            {
                string aaa = " {\"gas1ok\": \"" + gas1ok + "\" ,\"gas1all\": \"" + gas1all + "\",\"gas2ok\": \"" + gas2ok + "\" ,\"gas2all\": \"" + gas2all + "\", \"diesel1all\": \"" + diesel1all + "\" ,\"diesel1ok\": \"" + diesel1ok + "\", \"diesel2all\": \"" + diesel2all + "\" ,\"diesel2ok\": \"" + diesel2ok + "\"}";
                return aaa;
            }
        }


    }
}
