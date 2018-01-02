using CarQueryWebNewDBHelper.Entity;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Data;


namespace CarQueryWebNewDBHelper.DAL
{
    public class CheckPointManagerDAL
    {
        /// <summary>
        /// 分页获取检测站
        /// </summary>
        /// <param name="pageSize">每页多少条记录</param>
        /// <param name="pageCount">要多少页</param>
        /// <param name="UnitName">检测站名称</param>
        /// <returns></returns>
        public Tuple<DataTable, int> GetTUNITs(int pageSize, int pageCount, string UnitName = "")
        {
            var where = "";

            if (!string.IsNullOrEmpty(UnitName))
                where += " and CUNITNAME LIKE '%" + UnitName + "%'";

            try
            {
                if (pageSize == 0)
                {
                    var sqlStr = "SELECT tu.CUNITCODE,tu.CUNITNAME,tu.CLINKMAN,tu.CPHONE,tbdata.CDATANAME COUNTY ,tu.DEXPIRATION FROM TUNIT tu ,(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE filter='120000') tbdata " +
                        "WHERE tbdata.NBASEDATAID=tu.COUNTY ";
                    var dt = OracleHelper.ExecuteDataTable(CommandType.Text, sqlStr + where);
                    var result = new Tuple<DataTable, int>(dt, 1);
                    return result;
                }
                else
                {
                    var sqlStr = "SELECT NTEMP.*FROM(SELECT TEMP.*, ROWNUM RN FROM(SELECT tu.CUNITCODE,tu.CUNITNAME,tu.CLINKMAN,tu.CPHONE,tbdata.CDATANAME COUNTY,tu.DEXPIRATION FROM TUNIT tu ," +
                        "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE filter='120000') tbdata " +
                        "WHERE tbdata.NBASEDATAID=tu.COUNTY " + where + " ORDER BY CUNITCODE) TEMP) NTEMP WHERE NTEMP.RN >= " + (pageCount * pageSize) + " AND NTEMP.RN <=" + ((pageCount + 1) * pageSize);
                    var sqlStr1 = "SELECT COUNT(1) FROM TUNIT";
                    var dt = OracleHelper.ExecuteDataTable(CommandType.Text, sqlStr);
                    var num = Convert.ToInt32(OracleHelper.ExecuteScalar(CommandType.Text, sqlStr1));
                    var result = new Tuple<DataTable, int>(dt, num);
                    return result;
                }
            }
            catch
            {
                var result = new Tuple<DataTable, int>(null, 0);
                return result;
            }
        }
  
        public Tuple<DataSet, int> QueryJCZ()
        {
            try
            {
                var sqlStr = " select T.CUNITCODE UNITCODE,T.CUNITNAME UNITNAME,T.COUNTY AREACODE,DATA1.CDATANAME COUNTY from  TUNIT T," +
                    "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE CDATATYPE='287') DATA1 WHERE DATA1.NBASEDATAID=T.COUNTY ";  
                var ds = OracleHelper.ExecuteDataSet(CommandType.Text, sqlStr);
                return new Tuple<DataSet, int>(ds, ds.Tables[0].Rows.Count);
            }
            catch
            {
                return new Tuple<DataSet, int>(null, 0);
            }
        }

        /// <summary>
        /// 获取检测站基本信息
        /// </summary>
        /// <param name="cunitCode">检测站编号</param>
        /// <returns></returns>
        public Tuple<DataSet, int> GetBasicInfo(string cunitCode)
        {
            try
            {
                var sqlStr = "SELECT tu.CUNITCODE,tu.CUNITNAME,tu.CUNITABBREVIATION,tu.UNITADDRESS,tu.NPOSTCODE,tbdata2.CDATANAME CITYCODE,tbdata.CDATANAME COUNTY ,tu.DREGDATE,tu.CDIRECTOR,tu.CLINKMAN,tu.CPHONE,tu.CMA,tu.PROVAPPROVE,tu.NEQUIPMENTNUM,tu.CIPADDRESS,tu.NPORTNUMBER,tu.EXT_COL1,tu.EXT_COL2,tu.EXT_COL3,tu.ISLOCK,tbdata3.CDATANAME CNOCHECK,tu.CMEMO,tu.LINKDATE,tu.STATUS FROM TUNIT tu ," +
                    "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE filter='120000') tbdata ," +
                    "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE CDATATYPE=292) tbdata2," +
                    "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE CDATATYpe=39) tbdata3 " +
                    "WHERE tbdata.NBASEDATAID=tu.COUNTY " +
                    "AND tbdata2.NBASEDATAID=tu.CITYCODE " +
                    "AND tbdata3.NBASEDATAID=tu.CNOCHECK " +
                    "AND tu.CUNITCODE='" + cunitCode +"'";
                
                var ds = OracleHelper.ExecuteDataSet(CommandType.Text, sqlStr);
                return new Tuple<DataSet, int>(ds, ds.Tables[0].Rows.Count);
            }
            catch
            {
                return new Tuple<DataSet, int>(null, 0);
            }
        }

        /// <summary>
        /// 获取资质信息
        /// </summary>
        /// <param name="cunitCode">检测站编号</param>
        /// <returns></returns>
        public Tuple<DataSet, int> GetQualificationInfo(string cunitCode)
        {
            try
            {
                var sqlStr = "SELECT tu.ORGCODE,tu.CLICENSENUM,tu.CPERMIT,tbdata.CDATANAME CECONOMICTYPE,tu.NFIXEDASSETS,tu.NREGISTEREDCAPITAL,tu.LONGITUDE,tu.LATITUDE,tu.NTESTSITEAREA,tu.STAFFTOTAL,tu.SENIORENGINEERNUM,tu.ASSISTANTENGINEERNUM,tu.TECHNICALDIRECTOR,tu.ASSESSQUALIFIEDNUM,tu.ENGINEERNUM,tu.TECHNICIANNUM,tu.QUALITYDIRECTOR,tu.LEGAL,tu.TESTSAFE,tu.TESTCOMB,tbdata2.CDATANAME AGENCYTYPE,tu.EXT_COL4,tu.DEXPIRATION,tu.CRANGE FROM TUNIT tu," +
                    "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE CDATATYPE=1) tbdata, " +
                    "(SELECT NBASEDATAID,CDATANAME FROM TBASEDATA WHERE CDATATYPE=2) tbdata2 " +
                    "WHERE tbdata.NBASEDATAID=tu.CECONOMICTYPE  " +
                    "AND tbdata2.NBASEDATAID=tu.AGENCYTYPE  " +
                    "AND tu.CUNITCODE='" + cunitCode + "'";

                var ds = OracleHelper.ExecuteDataSet(CommandType.Text, sqlStr);
                return new Tuple<DataSet, int>(ds, ds.Tables[0].Rows.Count);
            }
            catch
            {
                return new Tuple<DataSet, int>(null, 0);
            }
        }

        /// <summary>
        /// 获取检测站编号MAX值+1
        /// </summary>
        /// <returns></returns>
        public DataSet GetCunitCode()
        {
            try
            {
                var sqlStr = "SELECT SUBSTR(CONCAT('000',(MAX(NVL(tu.CUNITCODE,0))+1)),-3,3) code FROM TUNIT tu";

                return OracleHelper.ExecuteDataSet(CommandType.Text, sqlStr);
            }
            catch
            {
                return null;
            }
        }

        /// <summary>
        /// 添加检测站基本信息
        /// </summary>
        /// <param name="tunit"></param>
        /// <returns></returns>
        public Tuple<Int32, string> TUNITInsert(TUNIT tunit)
        {   
            try
            {
                using (OracleTransaction tran = OracleHelper.GetOracleTransaction(OracleHelper.GetOracleConnection()))
                {
                    var result = 0;
                    try
                    {
                        OracleParameter[] paras = new OracleParameter[]{
                                new OracleParameter(":CUNITTYPE",tunit.CUNITTYPE),
                                new OracleParameter(":CUNITCODE",tunit.CUNITCODE),
                                new OracleParameter(":CUNITNAME",tunit.CUNITNAME),
                                new OracleParameter(":CUNITABBREVIATION",tunit.CUNITABBREVIATION),
                                new OracleParameter(":UNITADDRESS",tunit.UNITADDRESS),
                                new OracleParameter(":NPOSTCODE",tunit.NPOSTCODE),
                                new OracleParameter(":CITYCODE",tunit.CITYCODE),
                                new OracleParameter(":COUNTY",tunit.COUNTY),
                                new OracleParameter(":DREGDATE",tunit.DREGDATE),
                                new OracleParameter(":CDIRECTOR",tunit.CDIRECTOR),
                                new OracleParameter(":CLINKMAN",tunit.CLINKMAN),
                                new OracleParameter(":CPHONE",tunit.CPHONE),
                                new OracleParameter(":CMA",tunit.CMA),
                                new OracleParameter(":PROVAPPROVE",tunit.PROVAPPROVE),
                                new OracleParameter(":NEQUIPMENTNUM",tunit.NEQUIPMENTNUM),
                                new OracleParameter(":CIPADDRESS",tunit.CIPADDRESS),
                                new OracleParameter(":NPORTNUMBER",tunit.NPORTNUMBER),
                                new OracleParameter(":EXT_COL1",tunit.EXT_COL1),
                                new OracleParameter(":EXT_COL2",tunit.EXT_COL2),
                                new OracleParameter(":EXT_COL3",tunit.EXT_COL3),
                                new OracleParameter(":ISLOCK",tunit.ISLOCK),
                                new OracleParameter(":CNOCHECK",tunit.CNOCHECK),
                                new OracleParameter(":CMEMO",tunit.CMEMO),
                                new OracleParameter(":LINKDATE",tunit.LINKDATE),
                                new OracleParameter(":STATUS",tunit.STATUS),
                        };

                        var sqlStr0 = "SELECT COUNT(1) FROM TUNIT WHERE CUNITCODE ="+ tunit.CUNITCODE;
                        var num = Convert.ToInt32(OracleHelper.ExecuteScalar(CommandType.Text, sqlStr0));
                        if (num==0)
                        {
                            var sqlStr = "INSERT INTO TUNIT(CUNITTYPE,CUNITCODE,CUNITNAME,CUNITABBREVIATION,UNITADDRESS,NPOSTCODE,CITYCODE,COUNTY,DREGDATE,CDIRECTOR,CLINKMAN,CPHONE,CMA,PROVAPPROVE,NEQUIPMENTNUM,CIPADDRESS,NPORTNUMBER,EXT_COL1,EXT_COL2,EXT_COL3,ISLOCK,CNOCHECK,CMEMO,LINKDATE,STATUS)" +
                                "  VALUES(:CUNITTYPE,:CUNITCODE,:CUNITNAME,:CUNITABBREVIATION,:UNITADDRESS,:NPOSTCODE,:CITYCODE,:COUNTY,:DREGDATE,:CDIRECTOR,:CLINKMAN,:CPHONE,:CMA,:PROVAPPROVE,:NEQUIPMENTNUM,:CIPADDRESS,:NPORTNUMBER,:EXT_COL1,:EXT_COL2,:EXT_COL3,:ISLOCK,:CNOCHECK,:CMEMO,:LINKDATE,:STATUS)";
                            result += OracleHelper.ExecuteNonQuery(tran, CommandType.Text, sqlStr, paras);
                            tran.Commit();
                            return new Tuple<Int32, string>(1, "录入成功!");
                        }
                        else
                        {
                            var sqlStr = "UPDATE TUNIT tu  " +
                             "SET tu.CUNITTYPE = :CUNITTYPE,tu.CUNITNAME = :CUNITNAME,tu.CUNITABBREVIATION = :CUNITABBREVIATION,tu.UNITADDRESS = :UNITADDRESS,tu.NPOSTCODE = :NPOSTCODE,tu.CITYCODE = :CITYCODE,tu.COUNTY = :COUNTY,tu.DREGDATE = :DREGDATE,tu.CDIRECTOR = :CDIRECTOR,tu.CLINKMAN = :CLINKMAN,tu.CPHONE = :CPHONE,tu.CMA = :CMA,tu.PROVAPPROVE = :PROVAPPROVE,tu.NEQUIPMENTNUM = :NEQUIPMENTNUM,tu.CIPADDRESS = :CIPADDRESS,tu.NPORTNUMBER = :NPORTNUMBER,tu.EXT_COL1 = :EXT_COL1,tu.EXT_COL2 = :EXT_COL2,tu.EXT_COL3 = :EXT_COL3,tu.ISLOCK = :ISLOCK,tu.CNOCHECK = :CNOCHECK,tu.CMEMO = :CMEMO,tu.LINKDATE = :LINKDATE,tu.STATUS = :STATUS " +
                             "WHERE CUNITCODE=" + tunit.CUNITCODE;
                            result += OracleHelper.ExecuteNonQuery(tran, CommandType.Text, sqlStr, paras);
                            tran.Commit();
                            return new Tuple<Int32, string>(1, "更新成功!");
                        }
                    }
                    catch (Exception e)
                    {
                        tran.Rollback();
                        if (result == 0)
                            return new Tuple<Int32, string>(0, "此记录已存在!");
                        else if (result == 1)
                            return new Tuple<Int32, string>(0, "xx已存在!");
                        else
                            return new Tuple<Int32, string>(0, "'" + e + "'!");         
                    }
                }
            }
            catch (Exception e)
            {
                return new Tuple<Int32, string>(0, "'" + e + "'!");
            }
        }


        /// <summary>
        /// 添加资质信息
        /// </summary>
        /// <param name="tunit"></param>
        /// <returns></returns>
        public Tuple<Int32, string> QualificationInsert(TUNIT tunit)
        {
            try
            {
                using (OracleTransaction tran = OracleHelper.GetOracleTransaction(OracleHelper.GetOracleConnection()))
                {
                    var result = 0;
                    try
                    {
                        OracleParameter[] paras = new OracleParameter[]{
                                new OracleParameter(":ORGCODE",tunit.ORGCODE),
                                new OracleParameter(":CLICENSENUM",tunit.CLICENSENUM),
                                new OracleParameter(":CPERMIT",tunit.CPERMIT),
                                new OracleParameter(":CECONOMICTYPE",tunit.CECONOMICTYPE),
                                new OracleParameter(":NFIXEDASSETS",tunit.NFIXEDASSETS),
                                new OracleParameter(":NREGISTEREDCAPITAL",tunit.NREGISTEREDCAPITAL),
                                new OracleParameter(":LONGITUDE",tunit.LONGITUDE),
                                new OracleParameter(":LATITUDE",tunit.LATITUDE),
                                new OracleParameter(":NTESTSITEAREA",tunit.NTESTSITEAREA),
                                new OracleParameter(":STAFFTOTAL",tunit.STAFFTOTAL),
                                new OracleParameter(":SENIORENGINEERNUM",tunit.SENIORENGINEERNUM),
                                new OracleParameter(":ASSISTANTENGINEERNUM",tunit.ASSISTANTENGINEERNUM),
                                new OracleParameter(":TECHNICALDIRECTOR",tunit.TECHNICALDIRECTOR),
                                new OracleParameter(":ASSESSQUALIFIEDNUM",tunit.ASSESSQUALIFIEDNUM),
                                new OracleParameter(":ENGINEERNUM",tunit.ENGINEERNUM),
                                new OracleParameter(":TECHNICIANNUM",tunit.TECHNICIANNUM),
                                new OracleParameter(":QUALITYDIRECTOR",tunit.QUALITYDIRECTOR),
                                new OracleParameter(":LEGAL",tunit.LEGAL),
                                new OracleParameter(":TESTSAFE",tunit.TESTSAFE),
                                new OracleParameter(":TESTCOMB",tunit.TESTCOMB),
                                new OracleParameter(":AGENCYTYPE",tunit.AGENCYTYPE),
                                new OracleParameter(":EXT_COL4",tunit.EXT_COL4),
                                new OracleParameter(":DEXPIRATION",tunit.DEXPIRATION),
                                new OracleParameter(":CRANGE",tunit.CRANGE),
                        };

                        var sqlStr = "UPDATE TUNIT tu  " +
                            "SET tu.ORGCODE = :ORGCODE,tu.CLICENSENUM = :CLICENSENUM,tu.CPERMIT = :CPERMIT,tu.CECONOMICTYPE = :CECONOMICTYPE,tu.NFIXEDASSETS = :NFIXEDASSETS,tu.NREGISTEREDCAPITAL = :NREGISTEREDCAPITAL,tu.LONGITUDE = :LONGITUDE,tu.LATITUDE = :LATITUDE,tu.NTESTSITEAREA = :NTESTSITEAREA,tu.STAFFTOTAL = :STAFFTOTAL,tu.SENIORENGINEERNUM = :SENIORENGINEERNUM,tu.ASSISTANTENGINEERNUM = :ASSISTANTENGINEERNUM,tu.TECHNICALDIRECTOR = :TECHNICALDIRECTOR,tu.ASSESSQUALIFIEDNUM = :ASSESSQUALIFIEDNUM,tu.ENGINEERNUM = :ENGINEERNUM,tu.TECHNICIANNUM = :TECHNICIANNUM,tu.QUALITYDIRECTOR = :QUALITYDIRECTOR,tu.LEGAL = :LEGAL,tu.TESTSAFE = :TESTSAFE,tu.TESTCOMB = :TESTCOMB,tu.AGENCYTYPE = :AGENCYTYPE,tu.EXT_COL4 = :EXT_COL4,tu.DEXPIRATION = :DEXPIRATION,tu.CRANGE = :CRANGE " +
                            "WHERE CUNITCODE=" + tunit.CUNITCODE;
                        result += OracleHelper.ExecuteNonQuery(tran, CommandType.Text, sqlStr, paras);
                        tran.Commit();
                        return new Tuple<Int32, string>(1, "录入成功!");
                    }
                    catch (Exception e)
                    {
                        tran.Rollback();
                        if (result == 0)
                            return new Tuple<Int32, string>(0, "此记录已存在!");
                        else if (result == 1)
                            return new Tuple<Int32, string>(0, "xx已存在!");
                        else
                            return new Tuple<Int32, string>(0, "'" + e + "'!");
                    }
                }
            }
            catch (Exception e)
            {
                return new Tuple<Int32, string>(0, "'" + e + "'!");
            }
        }

        /// <summary>
        /// 删除检测站记录
        /// </summary>
        /// <param name="cunitCode">检测站编号</param>
        /// <returns></returns>
        public Tuple<Int32, string> TUNITDelete(string cunitCode)
        {
            try
            {
                using (OracleTransaction tran = OracleHelper.GetOracleTransaction(OracleHelper.GetOracleConnection()))
                {
                    var result = 0;
                    try
                    {
                        var sqlStr = "DELETE FROM TUNIT WHERE CUNITCODE='" + cunitCode + "'";
                        result += OracleHelper.ExecuteNonQuery(tran, CommandType.Text, sqlStr);
                        tran.Commit();
                        return new Tuple<Int32, string>(1, "删除成功!");

                    }
                    catch (Exception e)
                    {
                        tran.Rollback();
                        if (result == 0)
                            return new Tuple<Int32, string>(0, "删除失败!");
                        else
                            return new Tuple<Int32, string>(0, "'" + e + "'!");
                    }
                }
            }
            catch (Exception e)
            {
                return new Tuple<Int32, string>(0, "'" + e + "'!");
            }
        }

    }
}
