﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="generator" content="MShtml 8.00.6001.18783" />
    <title>天津市机动车排污检控中心监控平台</title>
    <link rel="stylesheet" href="Content/login.css" />
    <style type="text/css">
        .download {
            margin: 20px 33px 10px;
            *margin-bottom: 30px;
            padding: 5px;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            background: #e6e6e6;
            border: 1px dashed #df0031;
            font-size: 14px;
            font-family: Comic Sans MS;
            font-weight: bolder;
            color: #555;
        }

            .download a {
                padding-left: 5px;
                font-size: 14px;
                font-weight: normal;
                color: #555;
                text-align: center;
                text-decoration: none;
                letter-spacing: 1px;
            }

                .download a:hover {
                    text-decoration: underline;
                    color: #36F;
                }

            .download span {
                float: right;
            }

        #btnLogin {
            list-style: none;
            margin: 20px 33px 10px 100px;
        }

        .input {
            margin: 0 auto 11px;
            width: 237px
        }

        .input_all {
            border: none;
            color: #555;
            font-size: 14px;
            line-height: 30px;
            padding: 10px 0 10px 46px;
            vertical-align: middle;
            width: 237px;
            height: 30px
        }

        .button {
            font-size: 14px;
            line-height: 30px;
            margin: auto;
            border: none;
            width: 150px;
            height: 55px
        }
    </style>
    <script type="text/javascript" src="Scripts/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="Scripts/store.min.js"></script>
    <script type="text/javascript" src="Scripts/placeholder.js"></script>
    <script type="text/javascript" src="Scripts/login.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="header" style="text-align: center; font-weight: bold; color:honeydew; font-size: 36px;">天津市机动车排污检控中心监管系统</div>
            <div class="content">
                <div class="title hide"></div>


                <div class="input">
                    <input class="input_all name" name="name" id="name" value="" placeholder="用户名" type="text" onfocus="this.className='input_all name_now';" onblur="this.className='input_all name';showpwd()" maxlength="24" />
                </div>
                <div class="input">
                    <input class="input_all password" name="password" value="" id="password" type="password" placeholder="密码" onfocus="this.className='input_all password_now';" onblur="this.className='input_all password'" maxlength="24" />
                </div>
                <div class="checkbox">
                    <input type="checkbox" name="remember" id="remember" /><label for="remember"><span>记住密码</span></label>
                </div>
                <div class="enter">
                    &nbsp;<input class="button hide" id="btnLogin" type="button" onclick="btnLoginClick()" aria-autocomplete="none" /></div>


            </div>
        </div>
    </form>
    
</body>

</html>
