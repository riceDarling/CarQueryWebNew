<%@ WebHandler Language="C#" Class="CheckPointHandler" %>

using System;
using System.Web;
using CarQueryWebNewDBHelper.BLL;
using System.Reflection;
using CarQueryWebNewDBHelper.Entity;
using CarQueryWebNewDBHelper.Common;


public class CheckPointHandler : IHttpHandler {

    public bool IsReusable
    {
        get{return false;}
    }

    public void ProcessRequest(HttpContext context)
    {
        Context = context;
        Context.Response.ContentType = "text/plain";
        Context.Response.Charset = "utf-8";
        String methodName = context.Request["method"];
        String name = context.Request["name"];
        Type type = this.GetType();
        MethodInfo method = null;
        try { method = type.GetMethod(methodName); } catch { }

        if (method == null)
        {
            throw new Exception("method is null");
        }

        try
        {
            method.Invoke(this, null);
        }
        catch { }
    }


    /// <summary>
    /// 用来接收前端请求的对象
    /// </summary>
    private HttpContext Context;


    public void QueryJCZ()
    {
        var result = new CheckPointManagerBLL().QueryJCZ();
        var response = "";
        if (result.Item2 != 0)
            response = "{\"rows\":" + JsonHelper.ToJson(result.Item1.Tables[0]) + ",\"total\":" + result.Item2 + "}";
        else
            response =  "{\"rows\":[],\"total\":0";
        Context.Response.Write(response);
    }

    public void GetTUNITs()
    {
        var pageCount = int.Parse(Context.Request.Form["pagenumber"])-1;
        var pageSize = int.Parse(Context.Request.Form["pagesize"]);
        var UnitName = Context.Request.Form["UnitName"];
        var result = new CheckPointManagerBLL().GetTUNITs(pageSize,pageCount, UnitName);
        var response = "";
        if (result.Item2 != 0)
            response = "{\"rows\":" + JsonHelper.DataTableToJson(result.Item1) + ",\"total\":" + result.Item2 + "}";
        else
            response = "{\"rows\":0 ,\"total\":0 ,\"erro\":\"服务错误！\"}";

        Context.Response.Write(response);
    }

    public void GetBasicInfo()
    {
        var cunitCode = Context.Request.Form["cunitCode"];
        var result = new CheckPointManagerBLL().GetBasicInfo(cunitCode);
        var response = "";
        if (result.Item2 != 0)
            response = "{\"rows\":" + JsonHelper.ToJson(result.Item1.Tables[0]) + ",\"total\":" + result.Item2 + "}";
        else
            response =  "{\"rows\":[],\"total\":0}";
        Context.Response.Write(response);
    }


    public void GetQualificationInfo()
    {
        var cunitCode = Context.Request.Form["cunitCode"];
        var result = new CheckPointManagerBLL().GetQualificationInfo(cunitCode);
        var response = "";
        if (result.Item2 != 0)
            response = "{\"rows\":" + JsonHelper.ToJson(result.Item1.Tables[0]) + ",\"total\":" + result.Item2 + "}";
        else
            response =  "{\"rows\":[],\"total\":0";
        Context.Response.Write(response);
    }
    public void GetCunitCode()
    {
        var result = new CheckPointManagerBLL().GetCunitCode();
        var response = "";
        if (result != null)
            response = "{\"result\":" + JsonHelper.ToJson(result.Tables[0]) + "}";
        else
            response = "{\"result\":no}";
        Context.Response.Write(response);
    }
    public void TUNITInsert()
    {
        string CUNITCODE = Context.Request.Form["CUNITCODE"];
        string CUNITNAME = Context.Request.Form["CUNITNAME"];
        string CUNITABBREVIATION = Context.Request.Form["CUNITABBREVIATION"];
        string CPERMIT = Context.Request.Form["CPERMIT"];
        string NPOSTCODE = Context.Request.Form["NPOSTCODE"];
        string CITYCODE = Context.Request.Form["CITYCODE"];
        string COUNTY = Context.Request.Form["COUNTY"];
        string DREGDATE = Context.Request.Form["DREGDATE"];
        string CDIRECTOR = Context.Request.Form["CDIRECTOR"];
        string CLINKMAN = Context.Request.Form["CLINKMAN"];
        string CPHONE = Context.Request.Form["CPHONE"];
        string CMA = Context.Request.Form["CMA"];
        string PROVAPPROVE = Context.Request.Form["PROVAPPROVE"];
        string NEQUIPMENTNUM = Context.Request.Form["NEQUIPMENTNUM"];
        string CIPADDRESS = Context.Request.Form["CIPADDRESS"];
        string NPORTNUMBER = Context.Request.Form["NPORTNUMBER"];
        string EXT_COL1 = Context.Request.Form["EXT_COL1"];
        string EXT_COL2 = Context.Request.Form["EXT_COL2"];
        string EXT_COL3 = Context.Request.Form["EXT_COL3"];
        string ISLOCK = Context.Request.Form["ISLOCK"];
        string CNOCHECK = Context.Request.Form["CNOCHECK"];
        string CMEMO = Context.Request.Form["CMEMO"];
        string LINKDATE = Context.Request.Form["LINKDATE"];
        string STATUS = Context.Request.Form["STATUS"];

        if (!(string.IsNullOrEmpty(CUNITNAME)
                &&string.IsNullOrEmpty(CUNITABBREVIATION)
                &&string.IsNullOrEmpty(CITYCODE)
                &&string.IsNullOrEmpty(COUNTY)
                &&string.IsNullOrEmpty(DREGDATE)
                &&string.IsNullOrEmpty(CDIRECTOR)
                &&string.IsNullOrEmpty(CLINKMAN)
                &&string.IsNullOrEmpty(NEQUIPMENTNUM)
                &&string.IsNullOrEmpty(CIPADDRESS)
                &&string.IsNullOrEmpty(NPORTNUMBER)
                &&string.IsNullOrEmpty(STATUS)
                &&string.IsNullOrEmpty(EXT_COL1)
                &&string.IsNullOrEmpty(EXT_COL2)
                &&string.IsNullOrEmpty(EXT_COL3)
                &&string.IsNullOrEmpty(ISLOCK)))
        {
            var tunit = new TUNIT()
            {
                CUNITTYPE = "1",
                CUNITCODE = CUNITCODE,
                CUNITNAME = CUNITNAME,
                CUNITABBREVIATION = CUNITABBREVIATION,
                CPERMIT = CPERMIT,
                NPOSTCODE = NPOSTCODE,
                CITYCODE = CITYCODE,
                COUNTY = COUNTY,
                DREGDATE =  string.IsNullOrEmpty(LINKDATE)?  DateTime.Now : Convert.ToDateTime(DREGDATE),//yyyy-MM-dd hh:mm:ss 
                CDIRECTOR = CDIRECTOR,
                CLINKMAN = CLINKMAN,
                CPHONE = CPHONE,
                CMA = CMA,
                PROVAPPROVE = PROVAPPROVE,
                NEQUIPMENTNUM = int.Parse(NEQUIPMENTNUM),
                CIPADDRESS = CIPADDRESS,
                NPORTNUMBER = int.Parse(NPORTNUMBER),
                EXT_COL1 = EXT_COL1,
                EXT_COL2 = EXT_COL2,
                EXT_COL3 = EXT_COL3,
                ISLOCK = ISLOCK,
                CNOCHECK = CNOCHECK,
                CMEMO = CMEMO,
                LINKDATE = string.IsNullOrEmpty(LINKDATE)?  DateTime.Now :Convert.ToDateTime(LINKDATE),//yyyy-MM-dd hh:mm:ss 
                STATUS = STATUS,
            };

            var result = new CheckPointManagerBLL().TUNITInsert(tunit);
            var response = "{\"code\":\""+result.Item1+"\",\"message\":\"" + result.Item2 + "\"}";
            Context.Response.Write(response);
        }


    }
    public void QualificationInsert()
    {
        string CUNITCODE = Context.Request.Form["CUNITCODE"];
        string ORGCODE = Context.Request.Form["ORGCODE"];
        string CLICENSENUM = Context.Request.Form["CLICENSENUM"];
        string CPERMIT = Context.Request.Form["CPERMIT"];
        string CECONOMICTYPE = Context.Request.Form["CECONOMICTYPE"];
        string NFIXEDASSETS = Context.Request.Form["NFIXEDASSETS"];
        string NREGISTEREDCAPITAL = Context.Request.Form["NREGISTEREDCAPITAL"];
        string LONGITUDE = Context.Request.Form["LONGITUDE"];
        string LATITUDE = Context.Request.Form["LATITUDE"];
        string NTESTSITEAREA = Context.Request.Form["NTESTSITEAREA"];
        string STAFFTOTAL = Context.Request.Form["STAFFTOTAL"];
        string SENIORENGINEERNUM = Context.Request.Form["SENIORENGINEERNUM"];
        string ASSISTANTENGINEERNUM = Context.Request.Form["ASSISTANTENGINEERNUM"];
        string TECHNICALDIRECTOR = Context.Request.Form["TECHNICALDIRECTOR"];
        string ASSESSQUALIFIEDNUM = Context.Request.Form["ASSESSQUALIFIEDNUM"];
        string ENGINEERNUM = Context.Request.Form["ENGINEERNUM"];
        string TECHNICIANNUM = Context.Request.Form["TECHNICIANNUM"];
        string QUALITYDIRECTOR = Context.Request.Form["QUALITYDIRECTOR"];
        string LEGAL = Context.Request.Form["LEGAL"];
        string TESTSAFE = Context.Request.Form["TESTSAFE"];
        string TESTCOMB = Context.Request.Form["TESTCOMB"];
        string AGENCYTYPE = Context.Request.Form["AGENCYTYPE"];
        string EXT_COL4 = Context.Request.Form["EXT_COL4"];
        string DEXPIRATION = Context.Request.Form["DEXPIRATION"];
        string CRANGE = Context.Request.Form["CRANGE"];

        if (!(string.IsNullOrEmpty(ORGCODE)
                && string.IsNullOrEmpty(CLICENSENUM)
                && string.IsNullOrEmpty(NFIXEDASSETS)
                && string.IsNullOrEmpty(NREGISTEREDCAPITAL)
                && string.IsNullOrEmpty(LONGITUDE)
                && string.IsNullOrEmpty(LATITUDE)
                && string.IsNullOrEmpty(NTESTSITEAREA)
                && string.IsNullOrEmpty(TECHNICALDIRECTOR)
                && string.IsNullOrEmpty(ASSESSQUALIFIEDNUM)
                && string.IsNullOrEmpty(ENGINEERNUM)
                && string.IsNullOrEmpty(DEXPIRATION)
                && string.IsNullOrEmpty(TECHNICIANNUM)
                && string.IsNullOrEmpty(QUALITYDIRECTOR)
                && string.IsNullOrEmpty(LEGAL)
                && string.IsNullOrEmpty(TESTSAFE)))
        {
            var qualification = new TUNIT()
            {
                CUNITCODE = CUNITCODE,
                ORGCODE = ORGCODE,
                CLICENSENUM = CLICENSENUM,
                CPERMIT = CPERMIT,
                CECONOMICTYPE = CECONOMICTYPE,
                NFIXEDASSETS = Convert.ToDecimal(NFIXEDASSETS),
                NREGISTEREDCAPITAL = Convert.ToDecimal(NREGISTEREDCAPITAL),
                LONGITUDE = double.Parse(LONGITUDE),
                LATITUDE = double.Parse(LATITUDE),
                NTESTSITEAREA = float.Parse(NTESTSITEAREA),
                STAFFTOTAL = int.Parse(STAFFTOTAL),
                SENIORENGINEERNUM = int.Parse(SENIORENGINEERNUM),
                ASSISTANTENGINEERNUM = int.Parse(ASSISTANTENGINEERNUM),
                TECHNICALDIRECTOR = TECHNICALDIRECTOR,
                ASSESSQUALIFIEDNUM = int.Parse(ASSESSQUALIFIEDNUM),
                ENGINEERNUM = int.Parse(ENGINEERNUM),
                TECHNICIANNUM = int.Parse(TECHNICIANNUM),
                QUALITYDIRECTOR = QUALITYDIRECTOR,
                LEGAL = LEGAL,
                TESTSAFE = Int32.Parse(TESTSAFE),
                TESTCOMB = Int32.Parse(TESTCOMB),
                AGENCYTYPE = AGENCYTYPE,
                EXT_COL4 = int.Parse(EXT_COL4),
                DEXPIRATION = Convert.ToDateTime(DEXPIRATION),
                CRANGE = CRANGE,
            };

            var result = new CheckPointManagerBLL().QualificationInsert(qualification);
            var response = "{\"code\":\""+result.Item1+"\",\"message\":\"" + result.Item2 + "\"}";
            Context.Response.Write(response);

        }
    }

        
     public void TUNITDelete()
     {
            var cunitCode = Context.Request.Form["cunitCode"];
            var result = new CheckPointManagerBLL().TUNITDelete(cunitCode);
            var response = "{\"code\":\""+result.Item1+"\",\"message\":\"" + result.Item2 + "\"}";
            Context.Response.Write(response);
     }

}