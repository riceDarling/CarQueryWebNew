<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link rel="stylesheet" href="Content/header.css" />
		<link rel="stylesheet" href="Content/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="Content/themes/icon.css" />
		<link rel="stylesheet" href="https://js.arcgis.com/3.22/esri/css/esri.css">
		<link rel="stylesheet" href="Content/index.css" />
	</head>

	<body>
		<div id="tjwq_header" class="box-shadow2">
			<div></div>
		</div>
		<div id="nav">
			<span style="margin-left:16px;">欢迎登陆本系统！您当前的位置为：首页</span>
			<div style="float:right;">
				<span style="margin-right:40px;">您好！天津市用户</span>
				<a id="resetPwdBtn" href="javascript:;" style="margin-right:16px;">[修改密码]</a>
				<a href="Login.aspx" style="margin-right:16px;">[登出]</a>
			</div>
		</div>
		<div style="position:absolute;left:0;top:0;right:0;bottom:0;width:100%;height:100%;padding-top:180px;padding-left:100px;padding-right:100px;">
			<div style="width:100%;height:100%;position:relative;">
				<div id="listBtn" style="position:absolute;width:100%;height:100%;">
					<div class="btngrp">
						<a href="Pages/CheckPoint/CheckPointManager.aspx" target="">
							<div class="target-button">
								<div>
									<img src="images/index/1.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									检测站管理
								</div>
							</div>
						</a>
						<a href="page-child/cheliangfenxi.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/2.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									车辆管理
								</div>
							</div>
						</a>
						<a href="page-child/xincheguanli.html">
							<div class="target-button">
								<div>
									<img src="images/index/3.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									新车管理
								</div>
							</div>
						</a>
						<a href="page-child/zonghechaxun.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/4.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									综合查询
								</div>
							</div>
						</a>
						<a href="page-child/shujufankong.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/5.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									数据反控
								</div>
							</div>
						</a>
						<a href="page-child/pingtaijiankong.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/6.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									GIS平台
								</div>
							</div>
						</a>
						<a href="page-child/tongjifenxi.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/7.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									统计分析
								</div>
							</div>
						</a>
						<a href="page-child/yaocefenxi.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/8.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									遥感分析
								</div>
							</div>
						</a>
						<a href="Pages/Video/RealTimeMonitor.aspx" target="">
							<div class="target-button">
								<div>
									<img src="images/index/9.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									视频监控
								</div>
							</div>
						</a>
						<a href="page-child/shujuzidian.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/10.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									数据管理
								</div>
							</div>
						</a>
						<a href="page-child/baojingjiankong.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/11.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									报警监控
								</div>
							</div>
						</a>
						<a href="page-child/xitongguanli.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/13.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									<div>系统管理及</div>
									<div>日志管理</div>
								</div>
							</div>
						</a>
						<a href="page-child/xitongjiekou.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/14.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									系统接口
								</div>
							</div>
						</a>
						<a href="page-child/xinxifabu.html" target="">
							<div class="target-button fr">
								<div>
									<img src="images/index/17.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									信息发布
								</div>
							</div>
						</a>
						<a href="page-child/youqifenxi.html" target="">
							<div class="target-button">
								<div>
									<img src="images/index/16.png" width="70px" height="70px" />
								</div>
								<div class="mt-10">
									油气分析
								</div>
							</div>
						</a>
						<div style="clear: both;"></div>
					</div>
					<div class="chartmapbox_xk">
						<div id="chartbox_xk">
							<div id="chart_xk"></div>
							<div id="chart_xk1" style="display:none"></div>
							<div id="chart_xk2" style="display:none"></div>
						</div>
						<div id="mapbox_xk">
							<ul style="left: 0;top: 0;width: 100%;padding: 10px 0 0 410px;font-size:16px;line-height:22px;">
								<li>
									<a href="javascript:void();" class="on_xk index_tab-1">机动车排污检测机构</a>
								</li>
								<li>
									<a href="javascript:void();" class="index_tab-2">油气回收</a>
								</li>
								<li>
									<a href="javascript:void();" class="index_tab-3">遥感检测</a>
								</li>
							</ul>

							<div style="width:100%;height:100%;overflow:hidden;">
								<div id="MyMapDiv" class="MapClass"></div>
							</div>

						</div>
						<ul style="left: 0;top: 0;width:400px;padding: 10px 0 0;z-index: 3;line-height:22px;">
							<li style="width:38%;">
								<a href="javascript:void();" class="on_xk" id="id4">机动车检测总体情况</a>
							</li>
							<li style="width:31%;">
								<a href="javascript:void();" id="id5">油气总体情况</a>
							</li>
							<li style="width:31%;">
								<a href="javascript:void();" id="id6">遥测总体情况</a>
							</li>
						</ul>
					</div>
					<div class="mainlist">
						<div class="mainlist_title">天津市排污监控中心重要工作完成情况</div>
						<div class="mainlist_content_box">
							<div class="mainlist_content">
								<div class="mainlist_content_top">
									机动车检测机构监管工作
									<a style="cursor: pointer;">&gt;&gt;</a>
								</div>
								<div id="noticeA" class="mainlist_content_article">
									<ul class="car-content-source" style="width:100%;height:auto;display:table;margin:0;padding:0;border:1px solid #ccc;border-radius:2px;">
										<li style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">主题</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">内容</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布人</div>
											<div style="width:25%;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布日期</div>
										</li>
										<li class="car-content-nosource" style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<!--<div style="height:60px;line-height:60px;text-align:center;letter-spacing:1px;background:#f2f2f2;color:#aaa">无数据</div>-->
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="mainlist_content_box">
							<div class="mainlist_content">
								<div class="mainlist_content_top">
									遥测信息归集
									<a style="cursor: pointer;">&gt;&gt;</a>
								</div>
								<div id="noticeB" class="mainlist_content_article">
									<ul class="car-content-source" style="width:100%;height:auto;display:table;margin:0;padding:0;border:1px solid #ccc;border-radius:2px;">
										<li style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">主题</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">内容</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布人</div>
											<div style="width:25%;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布日期</div>
										</li>
										<li class="car-content-nosource" style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<!--<div style="height:60px;line-height:60px;text-align:center;letter-spacing:1px;background:#f2f2f2;color:#aaa">无数据</div>-->
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="mainlist_content_box">
							<div class="mainlist_content">
								<div class="mainlist_content_top">
									油气回收管理
									<a style="cursor: pointer;">&gt;&gt;</a>
								</div>
								<div id="noticeC" class="mainlist_content_article">
									<ul class="car-content-source" style="width:100%;height:auto;display:table;margin:0;padding:0;border:1px solid #ccc;border-radius:2px;">
										<li style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">主题</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">内容</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布人</div>
											<div style="width:25%;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布日期</div>
										</li>
										<li class="car-content-nosource" style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<!--<div style="height:60px;line-height:60px;text-align:center;letter-spacing:1px;background:#f2f2f2;color:#aaa">无数据</div>-->
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="mainlist_content_box">
							<div class="mainlist_content">
								<div class="mainlist_content_top">
									新车审核管理
									<a style="cursor: pointer;">&gt;&gt;</a>
								</div>
								<div id="noticeD" class="mainlist_content_article">
									<ul class="car-content-source" style="width:100%;height:auto;display:table;margin:0;padding:0;border:1px solid #ccc;border-radius:2px;">
										<li style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">主题</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">内容</div>
											<div style="width:25%;border-right:1px solid #ccc;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布人</div>
											<div style="width:25%;border-bottom:1px solid #ccc;color:#383838;letter-spacing:1px;line-height:33px;float:left;font-size:12px;text-align:center;">发布日期</div>
										</li>
										<li class="car-content-nosource" style="width:100%;height:auto; display:table;margin:0;padding:0;background:#f8f8f8;">
											<!--<div style="height:60px;line-height:60px;text-align:center;letter-spacing:1px;background:#f2f2f2;color:#aaa">无数据</div>-->
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="win" class="easyui-window" title="修改密码" style="width:300px;height:auto;display: none;" data-options="modal:true,closed:true,minimizable:false,maximizable:false">
			<form style="padding:10px 20px 10px 18px;">
				<p>原密码: <input type="text"><b>*</b></p>
				<p>新密码: <input type="password"><b>*</b></p>
				<p>新密码确认: <input type="password"><b>*</b></p>
				<div style="padding:5px;text-align:center;">
					<a href="#" class="easyui-linkbutton" icon="icon-ok">保存</a>
					<a href="#" class="easyui-linkbutton closeBtn" icon="icon-cancel">取消</a>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="Scripts/jquery.easyui-1.4.5.js"></script>
		<script type="text/javascript" src="Scripts/echarts/echarts.min.js"></script>
		<script src="https://js.arcgis.com/3.22/"></script>
		<script type="text/javascript" src="Scripts/column.js"></script>
		<script type="text/javascript" src="Scripts/index.js"></script>
	</body>

</html>