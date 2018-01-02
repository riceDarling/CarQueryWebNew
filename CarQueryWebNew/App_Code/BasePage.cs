using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;

/// <summary>
/// BasePage 的摘要说明
/// </summary>
public class BasePage: System.Web.UI.Page
{
    public BasePage()
    {
        this.Load += new EventHandler(On_Page_Load);
    }

    protected override void InitializeCulture()
    {
        base.InitializeCulture();        
    }

    protected void On_Page_Load(object sender, EventArgs e)
    {
        Response.Expires = -1000;        
       
        if (!CheckUrlRight())
                ShowMessageNoPermission();
        
    }

    public void ShowMessageNoPermission()
    {
        Response.Redirect(string.Format("~/NoPermission.aspx?PageUrl={0}", CurrUrl));
    }

    public void ShowSessionTimeOut()
    {
        string language = Request.QueryString["Language"];
        Response.Redirect(string.Format("~/SessionTimeOut.aspx?language={0}", language));
    }

    public string CurrUrl
    {
        get { return Request.Url.AbsolutePath.Substring(1); }
    }

    private bool CheckUrlRight()
    {       
        return true;        
    }

    public User CurrUser
    {
        get
        {
            return (User)Session["CurrUser"];
        }

        set { Session["CurrUser"] = value; }
    }
}