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
			<div class="ui-queryResult">
				查询结果
			</div>
			<!--<div class="inputgrp">
				<div class="inputgrp_first">检测站编码:</div>
				<div class="inputgrp_second">
					<input class="ui-inputText" type="text">
				</div>
			</div>-->
			<div class="inputgrp">
				<div class="inputgrp_first">检车站名称:</div>
				<div class="inputgrp_second">
					<input id="txtUnit" class="ui-inputText" type="text">
				</div>
			</div>
			<div class="inputgrp" style="width: 100%;">
				<div class="btngrp_r">
					<a class="ui-search page-search" title="查询" style="background-image:url(../../images/index/searchbtn.png);background-repeat: no-repeat;background-position: center;"></a>
					<a class="ui-revoke" title="撤销" style="background-image:url(../../images/index/cancelbtn.png);background-repeat: no-repeat;background-position: center;"></a>
					<a class="ui-add" title="添加" style="background-image:url(../../images/index/addBtn.png);background-repeat: no-repeat;background-position: center;"></a>
					<a class="ui-edit" title="修改" style="background-image:url(../../images/index/editBtn.png);background-repeat: no-repeat;background-position: center;"></a>
					<a class="ui-delete" title="删除" style="background-image:url(../../images/index/deleteBtn.png);background-repeat: no-repeat;background-position: center;"></a>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div style="width:100%;height:635px;background:#f4f4f4;">
			<div style="width:100%;height:100%;">
				<table class="page-table" id="page-table"></table>
			</div>
		</div>
		<!--查看详情-->
		<div id="win" class="easyui-window" title="检测站基本信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">

			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">

						    <div title="检测站基本信息" style="padding:20px;display:none;">
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
											<td colspan="2" class="ul"id="UNITADDRESS-vaule"></td>
											<td colspan="2" class="field">邮政编码:</td>
											<td colspan="2" class="ul" id="NPOSTCODE-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">所在地市:</td>
											<td colspan="2" class="ul"id="CITYCODE-vaule"></td>
											<td colspan="2" class="field">所在区县:</td>
											<td colspan="2" class="ul"id="COUNTY-vaule"></td>
											<td colspan="2" class="field">注册时间:</td>
											<td colspan="2" class="ul"id="DREGDATE-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">负责人:</td>
											<td colspan="2" class="ul"id="CDIRECTOR-vaule"></td>
											<td colspan="2" class="field">联系人:</td>
											<td colspan="2" class="ul"id="CLINKMAN-vaule"></td>
											<td colspan="2" class="field">联系电话:</td>
											<td colspan="2" class="ul"id="CPHONE-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">计量认证证号:</td>
											<td colspan="2" class="ul"id="CMA-vaule"></td>
											<td colspan="2" class="field">省委托编号:</td>
											<td colspan="2" class="ul"id="PROVAPPROVE-vaule"></td>
											<td colspan="2" class="field">检测线数量:</td>
											<td colspan="2" class="ul"id="NEQUIPMENTNUM-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">服务器IP地址:</td>
											<td colspan="2" class="ul"id="CIPADDRESS-vaule"></td>
											<td colspan="2" class="field">服务器端口号:</td>
											<td colspan="2" class="ul"id="NPORTNUMBER-vaule"></td>
		
											<td colspan="2" class="field">检验机构状态:</td>
											<td colspan="2" class="ul" id="STATUS-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">路由器IP地址:</td>
											<td colspan="2" class="ul"id="EXT_COL1-vaule"></td>
											<td colspan="2" class="field">路由器端口号:</td>
											<td colspan="2" class="ul"id="EXT_COL2-vaule"></td>
											<td colspan="2" class="field">是否允许复检:</td>
											<td colspan="2" class="ul"id="EXT_COL3-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">是否锁止:</td>
											<td colspan="2" class="ul"id="ISLOCK-vaule"></td>
											<td colspan="2" class="field">联网日期:</td>
											<td colspan="2" class="ul" id="LINKDATE-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">禁止检测某用<br/>途车:</td>
											<%--<td colspan="4" style="text-align:left;">
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
													<select class="selectVehicle" size="12"  id="CNOCHECK-vaule" multiple="multiple" style="width: 185px;height: 60px;">
														<option>非营运</option>
													</select>
												</fieldset>
											</td>--%>
                                            <td colspan="2" class="ul" id="CNOCHECK-vaule"></td>
										</tr>
										<tr>
											<td colspan="2" class="field">备注:</td>
											<td>
												<textarea  id="CMEMO-vaule" class="ui-textarea" style="width: 560px;border-radius:5px; " name="" disabled="true" tabindex="-1" maxlength="100" readonly></textarea>
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
												<textarea  id="CRANGE-vaule"class="ui-textarea" style="width: 560px;border-radius:5px ;" tabindex="-1" maxlength="500" disabled="true"></textarea>
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

		<!--add 增加 edit 修改-->
		<div id="add" class="easyui-window" title="检测站基本信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
			<div class="body">
				<div id="tt" class="easyui-tabs" style="width:720px;">
					<div title="检测站基本信息" style="padding:20px;display:none;">
						<table class="poptable" border="0" cellspacing="10" cellpadding="10">
							<tbody>
								<tr>
									<td colspan="2" class="field">检测站编号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CUNITCODE-input" disabled="disabled"/><b>*</b>
									</td>
									<td colspan="2" class="field">检车站名称:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CUNITNAME-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">检测站简称:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CUNITABBREVIATION-input"/><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测站地址:</td>
									<td colspan="5">
										<input class="easyui-textbox" style="width: 345px;" id="UNITADDRESS-input"/>
									</td>
									<td colspan="3" class="field">邮政编码:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="NPOSTCODE-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">所在地市:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="CITYCODE-input">
											<option value="120000">天津市</option>
										</select><b>*</b>
									</td>
									<td colspan="2" class="field">所在区县:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="COUNTY-input">
											<option value="120101">滨海新区</option>
											<option value="120102">静海区</option>
                                            <option value="120103">河东区</option>
										</select><b>*</b>
									</td>
									<td colspan="2" class="field">注册时间:</td>
									<td colspan="2">
                                        <input class="easyui-datetimebox w-120"  id="DREGDATE-input" /><b>*</b>
									<%--	<input class="easyui-textbox w-120"  onclick="WdatePicker()"><b>*</b>--%>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">负责人:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CDIRECTOR-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">联系人:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CLINKMAN-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">联系电话:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CPHONE-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">计量认证证号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CMA-input"/>
									</td>
									<td colspan="2" class="field">省委托编号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="PROVAPPROVE-input"/>
									</td>
									<td colspan="2" class="field">检测线数量:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="NEQUIPMENTNUM-input"/><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">服务器IP地址:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CIPADDRESS-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">服务器端口<br/>号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="NPORTNUMBER-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">检验机构状态:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="STATUS-input">
											<option value="0">正常</option>
											<option value="1">不正常</option>
										</select><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">硬盘录像机IP:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="EXT_COL1-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">硬盘录像机<br/>端口号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="EXT_COL2-input"/><b>*</b>
									</td>
									<td colspan="2" class="field">是否允许<br/>复检:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="EXT_COL3-input">
											<option value="0">否</option>
											<option value="1">是</option>
										</select><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">是否锁止:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="ISLOCK-input">
											<option value="0">否</option>
											<option value="1">是</option>
										</select><b>*</b>
									</td>
									<td colspan="2" class="field">联网日期:</td>
									<td colspan="2">
                                        <input class="easyui-datetimebox w-120"  id="LINKDATE-input"/><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">禁止检测某用<br/>途车辆:</td>
									<td colspan="4" style="text-align:left;">
										<fieldset>
											<legend>
												<span style="float: left;">可选车辆</span>
											</legend>
											<select class="selectVehicle" size="12" id="select1" multiple="multiple" style="width: 185px;height: 60px;">
												<option value="A">非营运</option>
												<option value="B">公路客运</option>
												<option value="C">公交客运</option>
												<option value="D">出租客运</option>
												<option value="E">旅游客运</option>
												<option value="F">租赁</option>
												<option value="G">邮政</option>
												<option value="H">警用</option>
												<option value="I">消防</option>
												<option value="J">救护</option>
												<option value="K">工程抢险</option>
												<option value="L">营转非</option>
                                                <option value="M">出租转非</option>
												<option value="Z">其他</option>
											</select>
										</fieldset>
									</td>
									<td>
										<input id="tjwqAddAll" type="button" value=">>" style="margin-bottom: 5px;margin-right: 5px;"/><br/>
										<input id="tjwqAdd" type="button" value="&nbsp;>&nbsp;" style="margin-bottom: 5px;margin-right: 5px;"/><br/>
										<input id="tjwqRemove" type="button" value="&nbsp;<&nbsp;" style="margin-bottom: 5px;margin-right: 5px;"/><br/>
										<input id="tjwqRemoveAll" type="button" value="<<" style="margin-right: 5px;"/><br/>
									</td>
									<td colspan="4" style="text-align:left">
										<fieldset>
											<legend>
												<span style="float: left;">可选车辆</span>
											</legend>
											<select class="selectVehicle" size="12" id="select2" multiple="multiple" style="width: 185px;height: 60px;"></select>
										</fieldset>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">备注:</td>
									<td colspan="3">
										<textarea id="CMEMO-input" class="ui-textarea" style="width: 567px;border-radius: 5px;" name="" disabled="true" tabindex="-1" maxlength="100" readonly></textarea>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="12" style="text-align: center;">
										<a href="javascript:tunitInsert()" class="easyui-linkbutton" iconCls="icon-save">保存</a>
									<%--	<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">取消</a>--%>
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
									<td colspan="2">
										<input class="easyui-textbox w-120"  id="ORGCODE-input"/>
									</td>
									<td colspan="2" class="field">经营许可证号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CLICENSENUM-input"/>
									</td>
									<td colspan="2" class="field">资质许可证号:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="CPERMIT-input"/><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">经济类型:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="CECONOMICTYPE-input">
											<option value="0">国有全资</option>
											<option value="1">集体全资</option>
                                            <option value="2">股份合作</option>
											<option value="3">联营</option>
                                            <option value="4">私有</option>
											<option value="5">其他内资</option>
										</select>
									</td>
									<td colspan="2" class="field">固定资产<br/>(万元):</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="NFIXEDASSETS-input"/>
									</td>
									<td colspan="2" class="field">注册资金<br/>(万元):</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="NREGISTEREDCAPITAL-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测站经度:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="LONGITUDE-input"/>
									</td>
									<td colspan="2" class="field">检测站纬度:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="LATITUDE-input"/>
									</td>
									<td colspan="2" class="field">场地面积<br/>(平方米):</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="NTESTSITEAREA-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">职工总数:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="STAFFTOTAL-input"/>
									</td>
									<td colspan="2" class="field">高级工程师<br/>人数:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="SENIORENGINEERNUM-input"/>
									</td>
									<td colspan="2" class="field">助理工程师<br/>人数:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="ASSISTANTENGINEERNUM-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">技术负责人:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="TECHNICALDIRECTOR-input"/>
									</td>
									<td colspan="2" class="field">考核合格人数:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="ASSESSQUALIFIEDNUM-input"/>
									</td>
									<td colspan="2" class="field">工程师人数:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="ENGINEERNUM-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">技术员人数:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="TECHNICIANNUM-input"/>
									</td>
									<td colspan="2" class="field">质量负责人:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="QUALITYDIRECTOR-input"/>
									</td>
									<td colspan="2" class="field">法人:</td>
									<td colspan="2">
										<input class="easyui-textbox w-120" id="LEGAL-input"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">是否承担安检:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="TESTSAFE-input">
											<option value="0">否</option>
											<option value="1">是</option>
										</select>
									</td>
									<td colspan="2" class="field">是否承担综检:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="TESTCOMB-input">
											<option value="0">否</option>
											<option value="1">是</option>
										</select>
									</td>
									<td colspan="2" class="field">申请机构类别:</td>
									<td colspan="2">
										<select class="easyui-combobox w-120" name="state" id="AGENCYTYPE-input">
											<option value="A">A类</option>
											<option value="B">B类</option>
                                            <option value="C">B类升A类</option>
										</select>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测服务区域:</td>
									<td colspan="5">
										<input class="easyui-textbox" style="width:345px;" id="EXT_COL4-input"/>
									</td>
									<td colspan="3" class="field">资质有效期:</td>
									<td colspan="2">
                                         <input class="easyui-datetimebox w-120" value=""  id="DEXPIRATION-input" /><b>*</b>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field">检测业务范围:</td>
									<td>
										<textarea  id="CRANGE-input" class="ui-textarea" style="width: 567px;" tabindex="-1" maxlength="100"></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="field"><label id="infoDialoglabel1" width="100%">附件:</label></td>
									<td colspan="2">
										<input type="file" style="display: none;" />
										<input type="text" />
										<input type="button" value="浏览"/>
										<input type="button" value="取消"/>
										<input type="button" value="上传"/>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="12" style="text-align: center;">
										<a href="javascript:qualificationInsert()" class="easyui-linkbutton" iconCls="icon-save">保存</a>
										<%--<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">取消</a>--%>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
					<div title="检测站人员信息" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="tjwqaddPersonnel" class="easyui-linkbutton">增加</a>
							<a href="javascript:void(0)" id="tjwqeditPersonnel" class="easyui-linkbutton">修改</a>
							<a href="javascript:void(0)" id="tjwqdeletePersonnel" class="easyui-linkbutton">删除</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table id="checks" class="page-table"></table>
							</div>
						</div>
					</div>
					<!--<div title="检测设备信息" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="tjwqAddEquipment" class="easyui-linkbutton">增加</a>
							<a href="javascript:void(0)" id="tjwqEditEquipment" class="easyui-linkbutton">修改</a>
							<a href="javascript:void(0)" id="tjwqDeleteEquipment" class="easyui-linkbutton">删除</a>
						</div>

						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class="page-table"></table>
							</div>
						</div>
					</div>-->
					<div title="检测线信息" style="padding:20px;display:none;">
						<div style="text-align:right;padding:5px">
							<a href="javascript:void(0)" id="tjwqAddLine" class="easyui-linkbutton">增加</a>
							<a href="javascript:void(0)" id="tjwqEditLine" class="easyui-linkbutton">修改</a>
							<a href="javascript:void(0)" id="tjwqDeleteLine" class="easyui-linkbutton">删除</a>
						</div>
						<div style="width:100%;background:#f4f4f4;">
							<div style="width:100%;">
								<table class="page-table"></table>
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

			<!--检测设备信息-->
			<div id="check2" class="easyui-window" title="检测设备信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
				<div class="body">
					<div id="tt" class="easyui-tabs" style="width:720px;">
						<div title="检测站基本信息" style="padding:20px;display:none;">
							<table class="poptable" border="0" cellspacing="10" cellpadding="10">
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
							<table class="poptable" border="0" cellspacing="10" cellpadding="10">
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
										<td colspan="2" class="ul"style="display: none;"><label></label></td>
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

			<!--检测站人员信息添加、修改-->
			<div id="addTjwqPersonnel" class="easyui-window" title="人员信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
				<div class="body">
					<div id="tt" class="easyui-tabs" style="width:720px;">
						<div title="检测站人员信息" style="padding:20px;display:none;">
							<table class="poptable" border="0" cellspacing="10" cellpadding="10">
								<tbody>
									<tr>
										<td colspan="2" class="field">检测站名称:</td>
										<td colspan="4">
											<input class="easyui-textbox w-120" style="width: 340px;" />
										</td>
										<!--<td colspan="2" class="field">用户角色范围:</td>
										<td colspan="2" class="ul"><label></label></td>-->
									</tr>
									<tr>
										<td colspan="2" class="field">账号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120"><b>*</b>
										</td>
										<td colspan="2" class="field">全名:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">性别:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value=""></option>
												<option value=""></option>
											</select><b>*</b>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">出生日期:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">身份证号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">职务:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value=""></option>
												<option value=""></option>
											</select><b>*</b>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">电子邮箱:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">学历:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value=""></option>
												<option value=""></option>
											</select>
										</td>
										<td colspan="2" class="field">状态:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value=""></option>
												<option value=""></option>
											</select><b>*</b>
										</td>
									</tr>
									<tr>

										<td colspan="2" class="field">入职日期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120" value="" id="" >
										</td>
										<td colspan="2" class="field">是否上岗:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value=""></option>
												<option value=""></option>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">备注:</td>
										<td>
											<textarea class="ui-textarea" style="width: 560px;border-radius:5px; " name="" tabindex="-1" maxlength="100"></textarea>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">
											<label id="" width="100%">附件:</label>
										</td>
										<td colspan="2">
											<input type="file" style="display: none;" />
											<input type="text" />
											<input type="button" value="浏览">
											<input type="button" value="取消">
											<input type="button" value="上传">
											<span style="color: red;">提示：最多上传3个附件</span>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="12" style="text-align: center;">
											<a href="#" class="easyui-linkbutton" iconCls="icon-save">保存</a>
											<%--<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">取消</a>--%>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>

			<!--检测设备信息 增加、修改-->
			<div id="addTjwqEquipment" class="easyui-window" title="检测设备信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
				<div class="body">
					<div id="tt" class="easyui-tabs" style="width:720px;">
						<div title="检测设备信息" style="padding:20px;display:none;">
							<table class="poptable" border="0" cellspacing="10" cellpadding="10">
								<tbody>
									<tr>
										<td colspan="2" class="field">检测站名称:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检测项目:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">型号/规格:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">技术指标<br/>测量范围:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">技术指标<br/>精确度：:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">制造单位:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">检定单位:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检定周期:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检定有效日期:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">使用日期:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">设备编号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">使用地点:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
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
											<a href="#" class="easyui-linkbutton" iconCls="icon-save">保存</a>
											<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">取消</a>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>

			<!--检测线信息增加、修改-->
			<div id="addTjwqLine" class="easyui-window" title="检测线信息" style="width:800px;display:none;height:500px;" data-options="modal:true,closed:true,minimizable:false">
				<div class="body">
					<div id="tt" class="easyui-tabs" style="width:720px;">
						<div title="检测线基本信息" style="padding:20px;display:none;">
							<table class="poptable" border="0" cellspacing="10" cellpadding="10">
								<tbody>
									<tr>
										<td colspan="2" class="field">检测站名称:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检测线编号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检测线名称:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field" style="display: none;">检验机构编号:</td>
										<td colspan="2" style="display: none;">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">启动日期:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检验方法:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value="1">双怠速</option>
												<option value="2">稳态工况</option>
												<option value="3">简易瞬态工况</option>
												<option value="4">加载减速</option>
												<option value="5">不透光烟度</option>
												<option value="6">滤纸烟度</option>
											</select>
										</td>
										<!--<td colspan="2" class="field">EIS版本号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>-->
									</tr>
									<tr>
										<td colspan="2" class="field">检测线状态:</td>
										<td colspan="2">
											<select class="easyui-combobox w-120" name="state">
												<option value="1">正常</option>
												<option value="2">停业</option>
												<option value="3">断网</option>
												<option value="4">注销</option>
											</select>
										</td>
										<td colspan="2" class="field">检测线设备<br/>厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">检测线设备检定<br/>有效期至:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120"  id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">底盘测功机型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">底盘测功机<br/>制造厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">底盘测功机<br/>检定有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120"  id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">气体分析仪型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">气体分析仪<br/>制造厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">气体分析仪<br/>检定有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120"  id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">流量计型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">流量计制造<br/>厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">流量计检定<br/>有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120"  id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">烟度计型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">烟度计制造<br/>厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">烟度计检定<br/>有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120" id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">转速计型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">转速计制造<br/>厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">转速计检定<br/>有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120"  id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">油温传感器型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">油温传感器生产<br/>厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">油温传感器检定<br/>有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120" id="" >
										</td>
									</tr>
									<tr>
										<td colspan="2" class="field">气象站型号:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">气象站生产<br/>厂商:</td>
										<td colspan="2">
											<input class="easyui-textbox w-120">
										</td>
										<td colspan="2" class="field">气象站检定<br/>有效期:</td>
										<td colspan="2">
											<input class="easyui-datetimebox w-120"  id="" >
										</td>
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
											<a href="#" class="easyui-linkbutton" iconCls="icon-save">保存</a>
											<a href="#" class="easyui-linkbutton closeDialogBtn" iconCls="icon-cancel">取消</a>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/CheckPoint/CheckPointManager.js"></script>
	</body>

</html>