<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>天津市机动车排污检控中心监控平台</title>
		<link rel="stylesheet" href="../../Content/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="../../Content/style.css">
		<link rel="stylesheet" href="../../Content/themes/icon.css" />
		<link rel="stylesheet" href="../../Content/Pages/SearchInfo/CheckDataQuery.css" />
		<style>
			.inputgrp>.inputgrp_second {
				width: 0;
			}
		</style>
	</head>

	<body>
		<div class="ui-container">
			<div style="width:100%;height:35px;background:linear-gradient(to bottom , #eee , #ccc);line-height:35px;text-indent:15px;border-bottom:1px solid #d0d0d0;font-weight:bold;">
				检测数据查询
			</div>
			<div class="inputgrp" style="height: 35px;line-height: 35px;">
				<div class="inputgrp_first">车牌号码:</div>
				<div class="inputgrp_second">
					<input class="easyui-textbox w-260">
				</div>
			</div>
			<div class="inputgrp" style="height: 35px;line-height: 35px;">
				<div class="inputgrp_first">检测场:</div>
				<div class="inputgrp_second">
					<select class="easyui-combobox w-260" name="state">
						<option value=""></option>
						<option value=""></option>
					</select>
				</div>
			</div>
			<a href="javascript:void(0);" style="float: right;margin-bottom: 5px;" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" title="重置"></a>
			<a href="javascript:void(0);" style="display:inline-block;float: right;margin-right: 10px;margin-bottom: 5px;" class="easyui-linkbutton" data-options="iconCls:'icon-search'" title="查询"></a>
			<div class="easyui-accordion" style="width:100%;height:480px;">
				<div title="更多查询条件" data-options="iconCls:'icon-search'" style="overflow:auto;padding:10px;">
					<div class="inputgrp">
						<div class="inputgrp_first">车架号:</div>
						<div class="inputgrp_second">
							<input class="easyui-textbox w-260">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">车辆类型:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">重型货车</option>
								<option value="">中型货车</option>
								<option value="">轻型货车</option>
								<option value="">微型货车</option>
								<option value="">低速货车</option>
								<option value="">大型客车</option>
								<option value="">中型客车</option>
								<option value="">小型客车</option>
								<option value="">小型客车</option>
								<option value="">小型客车</option>
								<option value="">微型客车</option>
								<option value="">三轮摩托车</option>
								<option value="">二轮摩托车</option>
								<option value="">三轮汽车</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">车牌类型:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">蓝牌</option>
								<option value="">黄牌</option>
								<option value="">黑牌</option>
								<option value="">白牌</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">检测线:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value=""></option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">检测类型:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">年检</option>
								<option value="">新车领标</option>
								<option value="">抽检</option>
								<option value="">委托年检</option>
								<option value="">外地车转入</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">厂牌型号:</div>
						<div class="inputgrp_second">
							<input class="easyui-textbox w-260">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">燃料种类:</div>
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
						<div class="inputgrp_first">尾气检测是否合格:</div>
						<div class="inputgrp_second">
							<select class="easyui-combobox w-260" name="state">
								<option value=""></option>
								<option value="">是</option>
								<option value="">否</option>
							</select>
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">尾气检测日期:</div>
						<div class="inputgrp_second" style="width: 48%;">
							<input class="easyui-datetimebox w-120" value=""> -- <input class="easyui-datetimebox w-120" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">初登日期:</div>
						<div class="inputgrp_second" style="width: 48%;">
							<input class="easyui-datetimebox w-120" value=""> -- <input class="easyui-datetimebox w-120" value="">
						</div>
					</div>
					<div class="inputgrp">
						<div class="inputgrp_first">是否有检测异常:</div>
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

					<div style="clear:both;"></div>
				</div>
				<div title="检测数据查询结果" style="padding:10px" data-options="iconCls:'icon-ok',selected:true,">
					<table class="easyui-datagrid page-table">
					</table>
				</div>
			</div>
		</div>
		<!-- 查看详情 -->
		<div id="win" class="easyui-window" title="详细信息" style="width:800px;height:700px;" data-options="iconCls:'icon-save',modal:true,closed:true,minimizable:false">
			<div class="body">
				<table class="poptable" border="0" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td colspan="3" class="tt">
								车辆信息:
							</td>
						</tr>
						<tr>
							<td class="field">车牌号:</td>
							<td><label>津DK8285</label></td>
							<td class="field" rowspan="8" style="padding:0;box-sizing: content-box;position:relative;">
								<div style="width:100%;height:90%;position:absolute;left:0;right:0;bottom:0;top:0;">
									<img src="../../images/index/zhanwu.jpg" style="width:100%;height:100%;	" alt="" />
									<div class="" style="position: absolute;right: 0;bottom: 2px;">
										<span class="tjwqImgBtnz" style="background: #636363;">前</span>
										<span class="tjwqImgBtnz" style="background: #C7C7C7;margin-right: 5px;">后</span>

									</div>
								</div>
								<div style="position: absolute;bottom: 0;left: 50%;">
									<a href="javascript:void(0);">视频</a>
								</div>
							</td>
						</tr>
						<tr>
							<td class="field">车牌类别:</td>
							<td><label>蓝牌</label></td>
						</tr>
						<tr>
							<td class="field">车架号:</td>
							<td><label><a id="tjwqFrameNub" href="javascript:void(0);">LGBG12E296Y027296</a></label></td>
						</tr>
						<tr>
							<td class="field">厂牌型号:</td>
							<td><label>颐达牌DFL7160AA</label></td>
						</tr>
						<tr>
							<td class="field">车辆类别:</td>
							<td><label></label>小型客车</td>
						</tr>
						<tr>
							<td class="field">燃料种类:</td>
							<td><label></label>汽油</td>
						</tr>
						<tr>
							<td class="field">标志类型:</td>
							<td><label>绿标</label></td>
						</tr>
						<tr>
							<td class="field">是否改造车:</td>
							<td><label>否</label></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3" style="border:none;">
								<div class="br"></div>
							</td>
						</tr>
					</tfoot>
				</table>
				<table class="poptable" border="0" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td colspan="4" class="tt">
								检测信息:
							</td>
						</tr>
						<tr>
							<td class="field">检测场:</td>
							<td><label><a id="tjwqCheckSite" href="javascript:void(0);">武清区机动车检测站</a></label></td>
							<td class="field">检测线:</td>
							<td><label><a id="tjwqCheckLine" href="javascript:void(0);">武清区轻汽检测线1</a></label></td>
						</tr>
						<tr>
							<td class="field">检测员:</td>
							<td><label></label></td>
							<td class="field">检测类型:</td>
							<td><label>年检</label></td>
						</tr>
						<tr>
							<td class="field">检测设备编号:</td>
							<td><label>0000000780</label></td>
							<td class="field">外观员:</td>
							<td><label>--</label></td>
						</tr>
						<tr>
							<td class="field">检测开始日期:</td>
							<td><label>2017-09-13 11:08:24</label></td>
							<td class="field">检测结束日期:</td>
							<td><label>2017-09-13 11:08:58</label></td>
						</tr>
						<tr>
							<td class="field">标准质量（kg）:</td>
							<td><label>1119</label></td>
							<td class="field">最大质量（kg）:</td>
							<td><label>1600</label></td>
						</tr>
						<tr>
							<td class="field">温度（℃）:</td>
							<td><label>30</label></td>
							<td class="field">大气压（hPa）:</td>
							<td><label>90.6</label></td>
						</tr>
						<tr>
							<td class="field">相对湿度（%）:</td>
							<td colspan="3"><label>54.5</label></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4" style="border:none;">
								<div class="br"></div>
							</td>
						</tr>
					</tfoot>
				</table>
				<table class="poptable" border="0" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td colspan="9" class="tt">
								稳定工况检测法检测结果:
							</td>
						</tr>
						<tr>
							<td class="field" rowspan="2">排气污染物</td>
							<td class="field ct" colspan="2">λ</td>
							<td class="field ct" colspan="2">HC（10<sup style="font-style: ;">-6</sup>）</td>
							<td class="field ct" colspan="2">CO（%）</td>
							<td class="field ct" colspan="2">NO（10<sup style="font-style: ;">-6</sup>）</td>
						</tr>
						<tr>
							<td class="ct"><label></label></td>
							<td class="ct"><label></label></td>
							<td class="ct"><label>5024</label></td>
							<td class="ct"><label>2540</label></td>
							<td class="ct"><label>5024</label></td>
							<td class="ct"><label>2540</label></td>
							<td class="ct"><label>5024</label></td>
							<td class="ct"><label>2540</label></td>
						</tr>
						<tr>
							<td class="field ct">测试结果</td>
							<td class="ct"><label>1.09</label></td>
							<td class="ct"><label>0</label></td>
							<td class="ct"><label>2</label></td>
							<td class="ct"><label>0</label></td>
							<td class="ct"><label>0.02</label></td>
							<td class="ct"><label>0</label></td>
							<td class="ct"><label>41</label></td>
							<td class="ct"><label>0</label></td>
						</tr>
						<tr>
							<td class="field ct">排放限值</td>
							<td class="ct"><label>--</label></td>
							<td class="ct"><label>--</label></td>
							<td class="ct"><label>95</label></td>
							<td class="ct"><label>90</label></td>
							<td class="ct"><label>0.7</label></td>
							<td class="ct"><label>0.6</label></td>
							<td class="ct"><label>850</label></td>
							<td class="ct"><label>800</label></td>
						</tr>
						<tr>
							<td class="field ct">判断结果<br/>（合格不合格）</td>
							<td class="ct"><label>--</label></td>
							<td class="ct"><label>--</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
						</tr>
						<tr>
							<td class="field ct">裁决<br/>（通过/未通过）</td>
							<td colspan="8"><label>通过</label></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4" style="border:none;">
								<div class="br"></div>
							</td>
						</tr>
					</tfoot>
				</table>
				<!--<table class="poptable" border="0" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td class="tt">
								检测异常:
							</td>
						</tr>
						<tr>
							<td>
									 
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="1" style="border:none;">
								<div class="br"></div>
							</td>
						</tr>
					</tfoot>
				</table>-->
				<table class="poptable" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td style="text-align: center;border: none;">
								<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width:80px">关闭</a>
								<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-print'" style="width:80px">打印</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--  车架号  -->
		<div id="FrameNub" class="easyui-window" title="车辆详细信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<table class="TotalQuery" border="0" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td class="field">车牌号码:</td>
							<td class="ul"><label></label></td>
							<td class="field">初登日期:</td>
							<td class="ul"><label></label></td>
							<td class="field">发动机号:</td>
							<td class="ul"><label></label></td>
						</tr>
						<tr>
							<td class="field">车型编码:</td>
							<td class="ul"><label></label></td>
							<td class="field">厂牌:</td>
							<td class="ul"><label></label></td>
							<td class="field">车辆类别:</td>
							<td class="ul"><label></label></td>
						</tr>
						<tr>
							<td class="field">最大质量:</td>
							<td class="ul"><label></label></td>
							<td class="field">基准质量:</td>
							<td class="ul"><label></label></td>
							<td class="field">燃油种类:</td>
							<td class="ul"><label></label></td>
						</tr>
						<tr>
							<td class="field">供油方式:</td>
							<td class="ul"><label></label></td>
							<td class="field">发动机型号:</td>
							<td class="ul"><label></label></td>
							<td class="field">发动机排量:</td>
							<td class="ul"><label></label></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4" style="border:none;">
								<div class="br"></div>
							</td>
						</tr>
					</tfoot>
				</table>
				<table class="TotalQuery" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td style="text-align: center;border: none;">
								<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width:80px">关闭</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 检测场 -->
		<div id="CheckSite" class="easyui-window" title="检测站基本信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">

					<div title="检测站基本信息" style="padding:20px;display:none;">
						<table class="TotalQuery" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">检测站编号:</td>
									<td colspan="2" class="ul" id="CUNITCODE-vaule"></td>
									<td colspan="2" class="field">检车站名称:</td>
									<td colspan="2" class="ul" id="CUNITNAME-vaule"></td>
									<td colspan="2" class="field">检测站简称:</td>
									<td colspan="2" class="ul" id="CUNITABBREVIATION-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测站地址:</td>
									<td colspan="2" class="ul" id="UNITADDRESS-vaule"></td>
									<td colspan="2" class="field">邮政编码:</td>
									<td colspan="2" class="ul" id="NPOSTCODE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">所在地市:</td>
									<td colspan="2" class="ul" id="CITYCODE-vaule"></td>
									<td colspan="2" class="field">所在区县:</td>
									<td colspan="2" class="ul" id="COUNTY-vaule"></td>
									<td colspan="2" class="field">注册时间:</td>
									<td colspan="2" class="ul" id="DREGDATE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">负责人:</td>
									<td colspan="2" class="ul" id="CDIRECTOR-vaule"></td>
									<td colspan="2" class="field">联系人:</td>
									<td colspan="2" class="ul" id="CLINKMAN-vaule"></td>
									<td colspan="2" class="field">联系电话:</td>
									<td colspan="2" class="ul" id="CPHONE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">计量认证证号:</td>
									<td colspan="2" class="ul" id="CMA-vaule"></td>
									<td colspan="2" class="field">省委托编号:</td>
									<td colspan="2" class="ul" id="PROVAPPROVE-vaule"></td>
									<td colspan="2" class="field">检测线数量:</td>
									<td colspan="2" class="ul" id="NEQUIPMENTNUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">服务器IP地址:</td>
									<td colspan="2" class="ul" id="CIPADDRESS-vaule"></td>
									<td colspan="2" class="field">服务器端口号:</td>
									<td colspan="2" class="ul" id="NPORTNUMBER-vaule"></td>

									<td colspan="2" class="field">检验机构状态:</td>
									<td colspan="2" class="ul" id="STATUS-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">路由器IP地址:</td>
									<td colspan="2" class="ul" id="EXT_COL1-vaule"></td>
									<td colspan="2" class="field">路由器端口号:</td>
									<td colspan="2" class="ul" id="EXT_COL2-vaule"></td>
									<td colspan="2" class="field">是否允许复检:</td>
									<td colspan="2" class="ul" id="EXT_COL3-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">是否锁止:</td>
									<td colspan="2" class="ul" id="ISLOCK-vaule"></td>
									<td colspan="2" class="field">联网日期:</td>
									<td colspan="2" class="ul" id="LINKDATE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">禁止检测某用<br/>途车:</td>
									<td colspan="4" style="text-align:left;">
										<fieldset>
											<legend>
												<span style="float: left;">可选车辆</span>
											</legend>
											<select class="selectVehicle" size="12" id="selectVehicleLeft" multiple="multiple" style="width: 185px;height: 60px;">
												<option value="A">非营运</option>
												<option value="B">公路客运</option>
												<option value="C">公交客运</option>
												<option value="D">旅游客运</option>
												<option value="E">租赁</option>
												<option value="F">邮政</option>
												<option value="G">消防</option>
												<option value="H">救护</option>
												<option value="I">工程抢险</option>
												<option value="J">营转非</option>
												<option value="K">出租转非</option>
												<option value="L">其他</option>
											</select>
										</fieldset>
									</td>
									<td colspan="4" style="text-align:left">
										<fieldset>
											<legend>
												<span style="float: left;">可选车辆</span>
											</legend>
											<select class="selectVehicle" size="12" id="CNOCHECK-vaule" multiple="multiple" style="width: 185px;height: 60px;">
												<option>非营运</option>
											</select>
										</fieldset>
									</td>
									<!--<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>-->
								</tr>
								<tr>
									<td colspan="2" class="field">备注:</td>
									<td>
										<textarea id="CMEMO-vaule" class="ui-textarea" style="width: 560px;border-radius:5px; " name="" disabled="true" tabindex="-1" maxlength="100" readonly></textarea>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="12" style="text-align: center;">
										<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">关闭</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>

					<div title="资质信息" style="padding:20px;display:none;">
						<table class="TotalQuery" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">组织机构代码:</td>
									<td colspan="2" class="ul" id="ORGCODE-vaule"></td>
									<td colspan="2" class="field">经营许可证号:</td>
									<td colspan="2" class="ul" id="CLICENSENUM-vaule"></td>
									<td colspan="2" class="field">资质许可证号:</td>
									<td colspan="2" class="ul" id="CPERMIT-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">经济类型:</td>
									<td colspan="2" class="ul" id="CECONOMICTYPE-vaule"></td>
									<td colspan="2" class="field">固定资产(万元):</td>
									<td colspan="2" class="ul" id="NFIXEDASSETS-vaule"></td>
									<td colspan="2" class="field">注册资金(万元):</td>
									<td colspan="2" class="ul" id="NREGISTEREDCAPITAL-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测站经度:</td>
									<td colspan="2" class="ul" id="LONGITUDE-vaule"></td>
									<td colspan="2" class="field">检测站纬度:</td>
									<td colspan="2" class="ul" id="LATITUDE-vaule"></td>
									<td colspan="2" class="field">场地面积(平方米):</td>
									<td colspan="2" class="ul" id="NTESTSITEAREA-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">职工总数:</td>
									<td colspan="2" class="ul" id="STAFFTOTAL-vaule"></td>
									<td colspan="2" class="field">高级工程师人数:</td>
									<td colspan="2" class="ul" id="SENIORENGINEERNUM-vaule"></td>
									<td colspan="2" class="field">助理工程师人数:</td>
									<td colspan="2" class="ul" id="ASSISTANTENGINEERNUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">技术负责人:</td>
									<td colspan="2" class="ul" id="TECHNICALDIRECTOR-vaule"></td>
									<td colspan="2" class="field">考核合格人数:</td>
									<td colspan="2" class="ul" id="ASSESSQUALIFIEDNUM-vaule"></td>
									<td colspan="2" class="field">工程师人数:</td>
									<td colspan="2" class="ul" id="ENGINEERNUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">技术员人数:</td>
									<td colspan="2" class="ul" id="TECHNICIANNUM-vaule"></td>
									<td colspan="2" class="field">质量负责人:</td>
									<td colspan="2" class="ul" id="QUALITYDIRECTOR-vaule"></td>
									<td colspan="2" class="field">法人:</td>
									<td colspan="2" class="ul" id="LEGAL-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">是否承担安检:</td>
									<td colspan="2" class="ul" id="TESTSAFE-vaule"></td>
									<td colspan="2" class="field">是否承担综检:</td>
									<td colspan="2" class="ul" id="TESTCOMB-vaule"></td>
									<td colspan="2" class="field">申请机构类别:</td>
									<td colspan="2" class="ul" id="AGENCYTYPE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测服务区域:</td>
									<td colspan="2" class="ul" id="EXT-COL4-vaule"></td>
									<td colspan="2" class="field">资质有效期:</td>
									<td colspan="2" class="ul" id="DEXPIRATION-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测业务范围:</td>
									<td>
										<textarea id="CRANGE-vaule" class="ui-textarea" style="width: 560px;border-radius:5px ;" tabindex="-1" maxlength="500" disabled="true"></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field"><label id="infoDialoglabel1" width="100%">上传的附件：</label></td>
									<td>
										<img src="" />
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="12" style="text-align: center;">
										<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">关闭</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>

					<div title="检测站人员信息" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="checkDetails" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class="personnelInformation"></table>
							</div>
						</div>
					</div>
					<!--<div title="检测设备信息" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="inspectionEquipment" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class="inspectionEquipment"></table>
							</div>
						</div>
					</div>-->
					<div title="检测线信息" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="checkLine" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class="checkLine"></table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--检测站人员信息查看-->
		<div id="check" class="easyui-window" title="人员信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">
					<div title="检测站人员信息" style="padding:20px;display:none;">
						<table class="TotalQuery" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">检测站名称:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">用户角色范围:</td>
									<td colspan="2" class="ul"><label></label></td>

								</tr>
								<tr>
									<td colspan="2" class="field">账号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">全名:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">密码:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">性别:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">出生日期:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">身份证号:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">职务:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">电子邮箱:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">学历:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">状态:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">入职日期:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">离职日期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">备注:</td>
									<td>
										<textarea class="ui-textarea" style="width: 560px;border-radius:5px; " name="" disabled="true" tabindex="-1" maxlength="100" readonly></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">
										<label id="" width="100%">上传的附件：</label>
									</td>
									<td>
										<img src="" />
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="12" style="text-align: center;">
										<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">关闭</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!--检测线信息-->
		<div id="check3" class="easyui-window" title="检测线信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">
					<div title="检测线基本信息" style="padding:20px;display:none;">
						<table class="TotalQuery" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">检测站名称:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">检测线编号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">检测线名称:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field" style="display: none;">检验机构编号:</td>
									<td colspan="2" class="ul" style="display: none;"><label></label></td>
									<td colspan="2" class="field">启动日期:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">检验方法:</td>
									<td colspan="2" class="ul"><label></label></td>
									<!--<td colspan="2" class="field">EIS版本号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>-->
								</tr>
								<tr>
									<td colspan="2" class="field">检测线状态:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">检测线设备<br/>厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">检测线设备检定<br/>有效期至:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">底盘测功机型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">底盘测功机<br/>制造厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">底盘测功机<br/>检定有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">气体分析仪型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">气体分析仪<br/>制造厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">气体分析仪<br/>检定有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">流量计型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">流量计制造<br/>厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">流量计检定<br/>有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">烟度计型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">烟度计制造<br/>厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">烟度计检定<br/>有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">转速计型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">转速计制造<br/>厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">转速计检定<br/>有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">油温传感器型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">油温传感器生产<br/>厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">油温传感器检定<br/>有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">气象站型号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">气象站生产<br/>厂商:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">气象站检定<br/>有效期:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>

								<tr>
									<td colspan="2" class="field">备注:</td>
									<td>
										<textarea class="ui-textarea" style="width: 560px;border-radius:5px; " name="" tabindex="-1" maxlength="100"></textarea>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="12" style="text-align: center;">
										<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">关闭</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/SearchInfo/CheckDataQuery.js"></script>
	</body>

</html>