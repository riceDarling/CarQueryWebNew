<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>天津市机动车排污检控中心监控平台</title>
		<link rel="stylesheet" href="../../Content/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="../../Content/style.css">
		<link rel="stylesheet" href="../../Content/themes/icon.css" />
	</head>

	<body>
		<div class="ui-container">
			<div style="width:100%;height:35px;background:linear-gradient(to bottom , #eee , #ccc);line-height:35px;text-indent:15px;border-bottom:1px solid #d0d0d0;font-weight:bold;">
				车辆查询
			</div>
			<div class="inputgrp" style="height: 35px;line-height: 35px;">
				<div class="inputgrp_first">车牌号码:</div>
				<div class="inputgrp_second">
					<input class="easyui-textbox w-260">
				</div>
			</div>
			<div class="inputgrp" style="height: 35px;line-height: 35px;">
				<div class="inputgrp_first">车辆种类:</div>
				<div class="inputgrp_second">
					<select class="easyui-combobox w-260" name="state">
						<option value=""></option>
						<option value="">汽油车(含天然气)</option>
						<option value="">柴油车</option>
						<option value="">电动车</option>
						<option value="">混合动力</option>
					</select>
				</div>
			</div>
			<a href="javascript:void(0);" style="float: right;margin-bottom: 5px;" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" title="重置"></a>
			<a href="javascript:void(0);" style="display:inline-block;float: right;margin-right: 10px;margin-bottom: 5px;" class="easyui-linkbutton" data-options="iconCls:'icon-search'" title="查询"></a>
			<div class="easyui-accordion" style="width:100%;height:480px;">
				<div title="更多查询条件" data-options="iconCls:'icon-search'" style="overflow:auto;padding:10px;">
					<div class="inputgrp">
						<div class="inputgrp_first">车牌颜色:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">黄牌</option>
								<option value="">蓝牌</option>
								<option value="">黑牌</option>
								<option value="">白牌</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">初登日期:</div>
						<div class="inputgrp_second" style="width: 50%;">
							<input class="easyui-datetimebox w-119" value=""> -- <input class="easyui-datetimebox w-119" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">最大质量:</div>
						<div class="inputgrp_second" style="width: 50%;">
							<input class="easyui-textbox w-119" value=""> -- <input class="easyui-textbox w-119" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">驱动形式:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">前驱</option>
								<option value="">后驱</option>
								<option value="">全时四驱</option>
								<option value="">分时四驱</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">基准质量:</div>
						<div class="inputgrp_second" style="width: 50%;">
							<input class="easyui-textbox w-119" value=""> -- <input class="easyui-textbox w-119" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">变速器形式:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">手动</option>
								<option value="">自动</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">厂牌-型号:</div>
						<div class="inputgrp_second" style="width: 50%;">
							<input class="easyui-textbox w-119" value=""> -- <input class="easyui-textbox w-119" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">燃油种类:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">汽油</option>
								<option value="">柴油</option>
								<option value="">电</option>
								<option value="">天然气</option>
								<option value="">液化石油气</option>
								<option value="">混合动力</option>
								<option value="">双燃料</option>
								<option value="">其他</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">供油方式:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">化油器</option>
								<option value="">化油器改造</option>
								<option value="">开环电喷</option>
								<option value="">闭环电喷</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">电喷方式:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">单点电喷</option>
								<option value="">多点电喷</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">是否有OBD:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">是</option>
								<option value="">否</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">是否电控:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">是</option>
								<option value="">否</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">客/货:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">货车</option>
								<option value="">客车</option>
								<option value="">摩托车</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">是否营运车:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">是</option>
								<option value="">否</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">是否为特殊车辆:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">是</option>
								<option value="">否</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">是否为免检车:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">是</option>
								<option value="">否</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">标志类型:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">黄标</option>
								<option value="">绿标</option>
								<option value="">新车绿标</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">尾气检测日期:</div>
						<div class="inputgrp_second" style="width: 50%;">
							<input class="easyui-datetimebox w-119" value=""> -- <input class="easyui-datetimebox w-119" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">最近一次修改的<br/>检测站:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value=""></option>
							</select>
						</div>
					</div>

					<div style="clear:both;"></div>
				</div>
				<div title="检测数据查询结果" style="padding:10px" data-options="iconCls:'icon-ok',selected:true,">
					<table class="easyui-datagrid page-table">
					</table>
				</div>
			</div>
		</div>
        <div class="cheliangchaxunPanel" style="position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.4);">
            <div id="cheliangchaxunPanel"  style="width:900px;height:550px;padding:0;background:#fff;border:1px solid #d0d0d0;margin:0 auto;">
                <div style="width:100%;height:42px;background:linear-gradient( to bottom , #f4f4f4,#eee)">
                    <div style="float:left;height:42px;line-height:42px;letter-spacing:1px;margin-left:15px;">车辆查询详细</div>
                    <div class="panel-removebtn" style="float:right;width:65px;height:42px;line-height:42px;letter-spacing:1px;text-align:center;cursor:pointer;">关闭</div>
                </div>
                <div style="width:100%;height:507px;">
                    <div id="tt" class="easyui-tabs" style="width:899px;height:510px;">
                        <div title="基本信息" style="padding:20px;display:none;">
                            <div style="width:100%;height:42px;line-height:42px;text-indext:15px;font-size:16px;">车辆信息：</div>
                            <div style="width:100%;height:200px;">
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">新车/在用车：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">扯架号/VIN：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">车牌号码：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">车牌颜色：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">初登日期：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">车辆种类：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否运营车：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">车用途标示：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否为免检车：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否改造：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">发动机号：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">里程表读数：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">侧滑装置：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                            </div>
                            <div style="width:100%;height:42px;line-height:42px;text-indext:15px;font-size:16px;">车型信息：</div>
                            <div style="width:100%;height:270px;">
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">满足排放标准：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">车辆类别：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">车辆生产厂：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">最大质量（kg）：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">基准质量（kg）：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">驱动形式：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">变速器形式：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">燃油种类：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否有OBD：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">客/货：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">座位：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">EGR型号：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">供油方式：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">机外净化器编号1：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">机外净化器编号2：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否有净化装置：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">氧传感器型号1：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">氧传感器型号2：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否电控：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">发动机型号：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                            </div>
                            <div style="width:100%;height:42px;line-height:42px;text-indext:15px;font-size:16px;">发动机信息：</div>
                            <div style="width:100%;height:200px;">
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">发动机额定转速：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">发动机排量：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">发动机额定功率：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">气缸数量：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">进气方式：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">发动机生产厂：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">电喷方式：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                            </div>
                            <div style="width:100%;height:42px;line-height:42px;text-indext:15px;font-size:16px;">检测信息：</div>
                            <div style="width:100%;height:200px;">
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否合格：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否已经发标：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">限值编码：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">印刷号：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">标志发放日期：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">标志有效期：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">补标次数：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:155px;height:35px;line-height:35px;text-align:right;float:left;">周期内检测未通过次数：</div><div style="width:90px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:135px;height:35px;line-height:35px;text-align:right;float:left;">第一次登记检测站：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:135px;height:35px;line-height:35px;text-align:right;float:left;">最近修改的检测站：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                            </div>
                            <div style="width:100%;height:42px;line-height:42px;text-indext:15px;font-size:16px;">其他信息：</div>
                            <div style="width:100%;height:200px;">
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是否为特殊车辆：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:125px;height:35px;line-height:35px;text-align:right;float:left;">是特殊车辆原因：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                                <div style="width:33%;height:35px;float:left;"><div style="width:135px;height:35px;line-height:35px;text-align:right;float:left;">特殊车辆检测周期：</div><div style="width:130px;height:26px;border-bottom:1px solid #d0d0d0;float:left;margin-left:3px;"></div></div>
                            </div>
                        </div>
                        <div title="监测信息"  style="overflow:auto;padding:20px;display:none;">
                            <div style="width:100%;height:442px;">
                                <table class="jiancexinxi-table" style="width:100%;"></table> 
                            </div>
                        </div>
                        <div title="路检查询"  style="padding:20px;display:none;">
                            <table class="lujianchaxun-table" style="width:100%;height:100%;"></table> 
                        </div>
                        <div title="维修信息" style="padding:20px;display:none;">
                            <table class="weixiuxinxi-table" style="width:100%;height:100%;"></table> 
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/SearchInfo/VehicleQuery.js"></script>
	</body>

</html>