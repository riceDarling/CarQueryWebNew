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
		<div class="easyui-accordion" style="width:100%;height:480px;">
			<div title="查询条件" data-options="iconCls:'icon-search',collapsed:false,collapsible:false" style="padding:10px;">
				<label>地市:</label>
				<select class="easyui-combobox" name="state" style="width:200px;">
					<option value=""></option>
					<option value="">天津市</option>
				</select>
				<label>区县:</label>
				<select class="easyui-combobox" name="state" style="width:200px;">
					<option value=""></option>
				</select>
				<label>检测站名称:</label>
				<select class="easyui-combobox" name="state" style="width:200px;">
					<option value=""></option>
				</select>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search'" title="查询"></a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-reload'" title="重置"></a>
			</div>
			<div title="检测站信息" data-options="iconCls:'icon-ok',selected:true" style="padding:10px;">
				<table class="page-table"></table>
			</div>
		</div>

		<!--查看详情-->
		<div id="win" class="easyui-window" title="检测站详细信息" style="width:800px;display:none;height:500px;" data-options="modal:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">
					<div title="基本信息" style="padding:20px;display:none;">
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
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
									<td colspan="2" class="field">汽油车检测方法:</td>
									<td colspan="2" class="ul" id=""></td>
									<!--<td colspan="2" class="field">联网日期:</td>
									<td colspan="2" class="ul" id="LINKDATE-vaule"></td>-->
								</tr>
								<tr>
									<td colspan="2" class="field">禁止检测某用<br/>途车:</td>
									<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
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
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
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
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<!--<tr>
									<td colspan="2" class="field">检测站名称:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">用户角色范围:</td>
									<td colspan="2" class="ul"><label></label></td>
								</tr>-->
								<tr>
									<td colspan="2" class="field">账号:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">全名:</td>
									<td colspan="2" class="ul"><label></label></td>
									<td colspan="2" class="field">审核日期:</td>
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
		<div id="check3" class="easyui-window" title="检测线详细信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">
					<div title="基本信息" style="padding:20px;display:none;">
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">检测线名称:</td>
									<td colspan="2" class="ul" id="CUNITCODE-vaule"></td>
									<td colspan="2" class="field">检测线类型:</td>
									<td colspan="2" class="ul" id="CUNITNAME-vaule"></td>
									<td colspan="2" class="field">检测线设备厂商:</td>
									<td colspan="2" class="ul" id="CUNITABBREVIATION-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">创建日期:</td>
									<td colspan="2" class="ul" id="UNITADDRESS-vaule"></td>
									<td colspan="2" class="field">检测线状态:</td>
									<td colspan="2" class="ul" id="NPOSTCODE-vaule"></td>
									<td colspan="2" class="field">是否锁止:</td>
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
									<td colspan="2" class="field">EIS版本号:</td>
									<td colspan="2" class="ul" id="CDIRECTOR-vaule"></td>
									<td colspan="2" class="field">EIS传送过来<br/>的设备号:</td>
									<td colspan="2" class="ul" id="CLINKMAN-vaule"></td>
									<td colspan="2" class="field">操作人员:</td>
									<td colspan="2" class="ul" id="CPHONE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">燃料种类:</td>
									<td colspan="2" class="ul" id="CMA-vaule"></td>
									<td colspan="2" class="field">检测种类:</td>
									<td colspan="2" class="ul" id="PROVAPPROVE-vaule"></td>
									<td colspan="2" class="field">工况限值:</td>
									<td colspan="2" class="ul" id="NEQUIPMENTNUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">黑盒子是否启用:</td>
									<td colspan="2" class="ul" id="CIPADDRESS-vaule"></td>
									<td colspan="2" class="field">读写器是否启用:</td>
									<td colspan="2" class="ul" id="NPORTNUMBER-vaule"></td>
									<td colspan="2" class="field">测功机滑行检查<br/>采样周期:</td>
									<td colspan="2" class="ul" id="STATUS-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">底盘测功机:</td>
									<td colspan="2" class="ul" id="EXT_COL1-vaule"></td>
									<td colspan="2" class="field">设备认证编码:</td>
									<td colspan="2" class="ul" id="EXT_COL2-vaule"></td>
									<td colspan="2" class="field">设备名称:</td>
									<td colspan="2" class="ul" id="EXT_COL3-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">型号:</td>
									<td colspan="2" class="ul" id="ISLOCK-vaule"></td>
									<td colspan="2" class="field">检测线内部<br/>工位号:</td>
									<td colspan="2" class="ul" id=""></td>
									<td colspan="2" class="field">检测线已发放<br/>最大标志号:</td>
									<td colspan="2" class="ul" id="LINKDATE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">非工况检测线<br/>类型:</td>
									<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
									<td colspan="2" class="field">不透光度计:</td>
									<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
									<td colspan="2" class="field">印刷号顺序编号:</td>
									<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测线最后一次<br/>发标时间:</td>
									<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
									<td colspan="2" class="field">非工况限值:</td>
									<td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
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

					<div title="扩展信息" style="padding:20px;display:none;">
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">分析仪校准时间:</td>
									<td colspan="4" class="ul" id="ORGCODE-vaule"></td>
									<td colspan="2" class="field">分析仪校准<br/>是否合格:</td>
									<td colspan="4" class="ul" id="CLICENSENUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">分析仪单点<br/>标定时间:</td>
									<td colspan="4" class="ul" id="CECONOMICTYPE-vaule"></td>
									<td colspan="2" class="field">分析仪单点标定<br/>是否合格:</td>
									<td colspan="4" class="ul" id="NFIXEDASSETS-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">分析仪泄漏<br/>检查时间:</td>
									<td colspan="4" class="ul" id="LONGITUDE-vaule"></td>
									<td colspan="2" class="field">分析仪泄漏检查<br/>是否合格:</td>
									<td colspan="4" class="ul" id="LATITUDE-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">测功机滑行<br/>检查时间:</td>
									<td colspan="4" class="ul" id="STAFFTOTAL-vaule"></td>
									<td colspan="2" class="field">测功机滑行检查<br/>是否合格:</td>
									<td colspan="4" class="ul" id="SENIORENGINEERNUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">测功机扭矩<br/>标定时间:</td>
									<td colspan="4" class="ul" id="TECHNICALDIRECTOR-vaule"></td>
									<td colspan="2" class="field">测功机扭矩标定<br/>是否合格:</td>
									<td colspan="4" class="ul" id="ASSESSQUALIFIEDNUM-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">测功机滚筒速度<br/>标定时间:</td>
									<td colspan="4" class="ul" id="TECHNICIANNUM-vaule"></td>
									<td colspan="2" class="field">测功机滚筒速度<br/>标定是否合格:</td>
									<td colspan="4" class="ul" id="QUALITYDIRECTOR-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">烟度计标定时间:</td>
									<td colspan="4" class="ul" id="TESTSAFE-vaule"></td>
									<td colspan="2" class="field">烟度计标定<br/>是否合格:</td>
									<td colspan="4" class="ul" id="TESTCOMB-vaule"></td>
								</tr>
								<tr>
									<td colspan="2" class="field">发动机转速计<br/>标定时间:</td>
									<td colspan="4" class="ul" id="EXT-COL4-vaule"></td>
									<td colspan="2" class="field">发动机转速计标定<br/>是否合格:</td>
									<td colspan="4" class="ul" id="DEXPIRATION-vaule"></td>
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

					<div title="分析仪标定" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="checkDetails" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class="personnelInformation"></table>
							</div>
						</div>
					</div>
					<div title="测功机标定" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class=""></table>
							</div>
						</div>
					</div>
					<div title="设备维修" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class=""></table>
							</div>
						</div>
					</div>
					<div title="检定" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class=""></table>
							</div>
						</div>
					</div>
					<div title="其他检定" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="tjwqOtherCheck" class="easyui-linkbutton">查看</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class=""></table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<!--其他标定详细信息-->
		<div id="OtherCheck" class="easyui-window" title="其他标定详细信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">
					<div title="其他标定详细信息" style="padding:20px;display:none;">
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">检测员:</td>
									<td colspan="4" class="ul"><label></label></td>
									<td colspan="2" class="field">检测站:</td>
									<td colspan="4" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测线:</td>
									<td colspan="4" class="ul"><label></label></td>
									<td colspan="2" class="field">标定时间:</td>
									<td colspan="4" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">标定类型:</td>
									<td colspan="4" class="ul"><label></label></td>
									<td colspan="2" class="field">名义物理量:</td>
									<td colspan="4" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">实际物理量:</td>
									<td colspan="4" class="ul"><label></label></td>
									<td colspan="2" class="field">标定是否合格:</td>
									<td colspan="4" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">是否出现异常:</td>
									<td colspan="4" class="ul"><label></label></td>
								</tr>
								<tr>
									<td colspan="2" class="field">异常描述:</td>
									<td>
										<textarea class="ui-textarea" style="width: 560px;border-radius:5px; " name="" disabled="true" tabindex="-1" maxlength="100" readonly></textarea>
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
		<script type="text/javascript" src="../../Scripts/Pages/SearchInfo/CheckStationQuery.js"></script>
	</body>

</html>