using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// User 的摘要说明
/// </summary>
public class User
{
    public User()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    private string _userID = string.Empty;
    private string _userName = string.Empty;

    public string UserID
    {
        get { return _userID; }
        set { _userID = value; }
    }

    public string Username
    {
        get { return _userName; }
        set { _userName = value; }
    }
}