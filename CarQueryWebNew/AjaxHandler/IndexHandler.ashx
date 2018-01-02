<%@ WebHandler Language="C#" Class="IndexHandler" %>

using System;
using System.Web;
using CarQueryWebNewDBHelper.BLL;
using System.Web.SessionState;
using System.Reflection;

/// <summary>
/// 此类主要用于存储首页的ajax的请求接口
/// </summary>

public class IndexHandler : IHttpHandler
{

    public bool IsReusable
    {
        get
        {
            return false;
        }
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
      
    /// <summary>
    /// 获取检测站描点信息
    /// </summary>
    public void GetJianCeZhanMapData()
    {
        string result = new IndexBLL().GetJianCeZhanMapData( Context.Request.Form["CUNITNAME"] , Context.Request.Form["pagenumber"] , Context.Request.Form["pagesize"] );
        Context.Response.Write(result);
    }

    /// <summary>
    /// 获取油汽回收的描点信息JYZ_UNIT
    /// </summary>
    public void GetMapYouQiGuanLiData()
    {
        string result = new IndexBLL().GetMapYouQiGuanLiData( Context.Request.Form["CUNITNAME"] , Context.Request.Form["pagenumber"] , Context.Request.Form["pagesize"] );
        Context.Response.Write(result);
    }

    /// <summary>
    /// 获取遥感检测的描点信息
    /// </summary>
    public void GetMapYaoGanJianCeData()
    {
        string result = new IndexBLL().GetMapYaoGanJianCeData( Context.Request.Form["CUNITNAME"] , Context.Request.Form["pagenumber"] , Context.Request.Form["pagesize"] );
        Context.Response.Write(result);
    }
        

    /// <summary>
    /// 获取首页机车检测总体情况饼图信息
    /// </summary>
    public void GetChartData()
    {
        string result = new IndexBLL().GetChartData( HttpContext.Current.Request["lastdate"] , HttpContext.Current.Request["nextdate"] , HttpContext.Current.Request["UnitCode"] );
        Context.Response.Write(result);
    }

    /// <summary>
    /// 获取首页油气总体情况饼图信息
    /// </summary>
    public void GetChart2Data()
    {
        string result = new IndexBLL().GetChartData( HttpContext.Current.Request["lastdate"] , HttpContext.Current.Request["nextdate"] , HttpContext.Current.Request["UnitCode"] );
        Context.Response.Write(result);
    }

    /// <summary>
    /// 获取首页遥感总体情况饼图信息
    /// </summary>
    public void GetChart3Data()
    {
        string result = new IndexBLL().GetChartData( HttpContext.Current.Request["lastdate"] , HttpContext.Current.Request["nextdate"] , HttpContext.Current.Request["UnitCode"] );
        Context.Response.Write(result);
    }



}