<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RealTimeMonitor.aspx.cs" Inherits="Pages_Video_RealTimeMonitor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link rel="stylesheet" href="../../Content/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="../../Content/header.css" />
		<style type="text/css">
			.tjwqVideoBtn {
				float: left;
				list-style: none;
				width: 130px;
				cursor: pointer;
				text-align: center;
				color: #999;
			}
			.tjwqVideoActive {
				background: #0196E3;
				color: #fff;
			}
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
						<a href="jiankongpingtai.html" target="">
							<div class="target-button">
								<img src="../../images/index/1.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="cheliangfenxi.html" target="">
							<div class="target-button">
								<img src="../../images/index/2.png" width="70px" height="70px" />
							</div>
						</a>
					</li>
					<li>
						<a href="xincheguanli.html">
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
				<a href="../Login.aspx" style="margin-right:16px;">[登出]</a>
			</div>
		</div>
		<!--<div class="pagewrap" style="width:100%;height:100%;margin-top: 30px;">
			<div id="tjwqBtn" class="jczjcz left_list">
				<div class="tjwqtitle">
					视频监控
				</div>
				<div class="listbtnz tjwqActive"><b></b>
					<div>视频监控管理</div>
				</div>
			</div>
		<div id="tjwqMainframe">
				<div id="tjwqMainframe_bodybox">
					<div id="tjwqMainframe_body">
						<iframe name="mainFrame" id="mainFrame" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" src="./RealTimeMonitor.aspx"></iframe>
					</div>
				</div>
			</div>
		</div>-->
		<div class="pagewrap" style="width:100%;height:100%;margin-top: 30px;">
			<div style="width:16%;height:100%;float:left;border-right:1px solid #d0d0d0;">
				<div style="height:35px;background:linear-gradient(to bottom , #eee , #ccc);line-height:35px;text-indent:15px;border-bottom:1px solid #d0d0d0;font-weight:bold;width:100%;">
					视频列表
				</div>
				<div class="easyui-panel" style="padding:5px;height:100%;">
					<ul class="easyui-tree">
						<li data-options="state:'closed'">
							<span>金东机动车监控中心</span>
							<ul>
								<li data-options="state:'closed'">
									<span>金东轻汽检测线1</span>
									<ul>
										<li><span>前</span></li>
										<li><span>后</span></li>
									</ul>
								</li>
								<li data-options="state:'closed'">
									<span>金东轻汽检测线2</span>
									<ul>
										<li><span>前</span></li>
										<li><span>后</span></li>
									</ul>
								</li>
								<li data-options="state:'closed'">
									<span>金东轻汽检测线3</span>
									<ul>
										<li><span>前</span></li>
										<li><span>后</span></li>
									</ul>
								</li>
							</ul>
						</li>
						<li data-options="state:'closed'">
							<span>公交三机动车检测有限公司</span>
							<ul>
								<li data-options="state:'closed'">
									<span>公交三混合检测线1</span>
									<ul>
										<li><span>前</span></li>
										<li><span>后</span></li>
									</ul>
								</li>
								<li data-options="state:'closed'">
									<span>公交三轻汽检测线1</span>
									<ul>
										<li><span>前</span></li>
										<li><span>后</span></li>
									</ul>
								</li>
								<li data-options="state:'closed'">
									<span>公交三重柴检测线1</span>
									<ul>
										<li><span>前</span></li>
										<li><span>后</span></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>

			<div style="width:100%;height:35px;background:linear-gradient(to bottom , #eee , #ccc);line-height:35px;text-indent:15px;border-bottom:1px solid #d0d0d0;font-weight:bold;">
				<ul class="tjwqVideo">
					<li id="tjwqVideoBtn1" class="tjwqVideoBtn tjwqVideoActive">预 览</li>
					<li id="tjwqVideoBtn2" class="tjwqVideoBtn">四 屏</li>
					<li id="tjwqVideoBtn3" class="tjwqVideoBtn">九 屏</li>
					<li id="tjwqVideoStopBtn" class="tjwqVideoBtn">停 止</li>
				</ul>
			</div>
			<div style="width:100%;height:100%;">
				<div class="btn1">
					<video width="84%" height="98%" autoplay loop>
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="myvideo.ogv" type="video/ogg"></source>
						<source src="myvideo.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="myvideo.swf">
							<param name="movie" value="myvideo.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideo.swf" />
						</object>
						当前浏览器不支持 video直接播放，点击这里下载视频： <a href="myvideo.webm">下载视频</a>
					</video>
				</div>
				<div class="btn2" style="display: none;">
					<video width="41%" height="40%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="41%" height="40%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="41%" height="40%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="41%" height="40%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
				</div>

				<div class="btn3" style="display: none;">
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
					<video width="28%" height="33%" autoplay loop style="float: left;border: 1px solid #fff;">
						<source src="mov_bbb.mp4" type="video/mp4"></source>
						<source src="mov_bbb.ogv" type="video/ogg"></source>
						<source src="mov_bbb.webm" type="video/webm"></source>
						<object width="" height="" type="application/x-shockwave-flash" data="mov_bbbs.swf">
							<param name="movie" value="mov_bbbs.swf" />
							<param name="flashvars" value="autostart=true&amp;file=myvideos.swf" />
						</object> 当前浏览器不支持 video直接播放，点击这里下载视频：
						<a href="mov_bbb.webm">下载视频</a>
					</video>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/column.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/Video/RealTimeMonitor.js" ></script>
	</body>

</html>