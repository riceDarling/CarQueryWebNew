<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckPointManager.aspx.cs" Inherits="Pages_CheckPoint_CheckPointManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>天津市机动车排污检控中心监控平台</title>
		<link rel="stylesheet" href="../../Content/header.css" />
        <link rel="stylesheet" href="../../Content/themes/bootstrap/easyui.css"/>
        <link rel="stylesheet" href="../../Content/themes/icon.css"/>
		<style>
			* {
				box-sizing: border-box;
			}
			
			html,
			body {
				width: 100%;
				height: 100%;
				margin: 0;
				padding: 0;
				background: #f4f4f4;
			}
			
			* {
				font-family: "微软雅黑";
				font-size: 13px;
				letter-spacing: 1px;
			}
			
			.datagrid-cell {
				overflow: hidden !important;
				text-overflow: ellipsis !important;
				white-space: nowrap !important;
			}
			
			.county:hover {
				color: red;
			}

		  /*#tjwqMainframe_body #mainFrame {
                height: 120% !important;
            }*/

		</style>
	</head>

	<body>
		<div id="tjwq_header">
			<div></div>
		</div>
		<div class="roll" id="roll">
			<a href="javascript:void(0);" class="btn_left"></a>
			<a href="javascript:void(0);" class="btn_right"></a>
			<div class="wrap">
				<ul>
					<li>
						<a href="../../Index.aspx" target="">
							<div class="target-button">
								<img src="../../images/index/home.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="CheckPointManager.aspx" target="">
							<div class="target-button">
								<img src="../../images/index/1.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="../NewVehicle/NewVehicleManager.aspx" target="">
							<div class="target-button">
								<img src="../../images/index/2.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="../NewVehicle/NewVehicleManager.aspx">
							<div class="target-button">
								<img src="../../images/index/3.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="zonghechaxun.html" target="">
							<div class="target-button">
								<img src="../../images/index/4.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="shujufankong.html" target="">
							<div class="target-button">
								<img src="../../images/index/5.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="pingtaijiankong.html" target="">
							<div class="target-button">
								<img src="../../images/index/6.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="tongjifenxi.html" target="">
							<div class="target-button">
								<img src="../../images/index/7.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="zhifajiandu.html" target="">
							<div class="target-button">
								<img src="../../images/index/8.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="shipinzhuisu.html" target="">
							<div class="target-button">
								<img src="../../images/index/9.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="shujuzidian.html" target="">
							<div class="target-button">
								<img src="../../images/index/10.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="baojingjiankong.html" target="">
							<div class="target-button">
								<img src="../../images/index/11.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="xitongguanli.html" target="">
							<div class="target-button">
								<img src="../../images/index/13.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="xitongjiekou.html" target="">
							<div class="target-button">
								<img src="../../images/index/14.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="xinxifabu.html" target="">
							<div class="target-button fr">
								<img src="../../images/index/17.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="youqifenxi.html" target="">
							<div class="target-button">
								<img src="../../images/index/16.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div id="nav">
			<span id="tjwqtitlenav" style="margin-left:16px;">欢迎登陆本系统！您当前的位置为：首页</span>
			<div style="float:right;"><span style="margin-right:40px;">您好！天津市用户</span>
				<!--<a href="page-child/resetPwd.html" style="margin-right:16px;">[修改密码]</a>-->
				<a href="../Login.aspx" style="margin-right:16px;">[登出]</a>
			</div>
		</div>
		<div class="pagewrap" style="width:100%;height:100%;margin-top: 30px;">
			<div id="tjwqBtn" class="jczjcz left_list">
				<div class="tjwqtitle">
					检测站管理
				</div>
				<div class="listbtnz tjwqActive"><b></b>
					<div>检测站管理</div>
				</div>
			</div>
			<div id="tjwqMainframe">
				<div id="tjwqMainframe_bodybox">
					<div id="tjwqMainframe_body">
						<iframe name="mainFrame" id="mainFrame" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" src="./CheckPointManager2.aspx"></iframe>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/column.js" ></script>
	</body>

</html>