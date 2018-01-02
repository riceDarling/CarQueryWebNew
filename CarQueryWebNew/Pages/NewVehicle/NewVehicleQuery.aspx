<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>天津市机动车排污检控中心监控平台</title>
		<link rel="stylesheet" href="../../Content/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="../../Content/style.css">
		<!--<link rel="stylesheet" href="../../Content/Pages/NewVehicle/NewVehicleQuery.css">-->
		<link rel="stylesheet" href="../../Content/themes/icon.css" />
	</head>

	<body>
		<div class="ui-container">
			<div class="ui-queryResult">
				新车查询
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车架号/VIN:</div>
				<div class="inputgrp_second">
					<input id="txtUnit" class="ui-inputText" type="text">
				</div>
			</div>
			<div class="inputgrp" style="width: 50%;">
				<div class="btngrp_r">
					<a class="ui-search page-search" title="查询" style="background-image:url(../../images/index/searchbtn.png);background-repeat: no-repeat;background-position: center;"></a>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div style="width:100%;height:635px;background:#f4f4f4;">
			<div style="width:100%;height:100%;">
				<table class="page-table" id="page-table"></table>
			</div>
		</div>
		<div id="win" class="easyui-window" title="详细信息" style="width:800px;display:none;height:500px;" data-options="iconCls:'icon-save',closed:true,modal:true,minimizable:false">
			<div class="body">
				<table class="poptable" border="0" cellspacing="10" cellpadding="10">
					<tbody>
						<tr>
							<td colspan="3" class="tt">
								车辆信息:
							</td>
						</tr>
						<tr>
							<td class="field">车牌号：</td>
							<td><label>津DK8285</label></td>
							<td class="field" rowspan="8" style="padding:0;box-sizing: content-box;position:relative;">
								<div style="width:100%;height:100%;position:absolute;left:0;right:0;bottom:0;top:0;"><img src="../images/zhanwu.jpg" style="width:100%;height:100%;	" alt="" /></div>

							</td>
						</tr>
						<tr>
							<td class="field">车牌类别：</td>
							<td><label>蓝牌</label></td>
						</tr>
						<tr>
							<td class="field">车架号：</td>
							<td><label>LGBG12E296Y027296</label></td>
						</tr>
						<tr>
							<td class="field">厂牌型号：</td>
							<td><label>颐达牌DFL7160AA</label></td>
						</tr>
						<tr>
							<td class="field">车辆类别：</td>
							<td><label></label>小型客车</td>
						</tr>
						<tr>
							<td class="field">燃料种类：</td>
							<td><label></label>汽油</td>
						</tr>
						<!--<tr>
                        <td class="field">标志类型：</td>
                        <td><label>绿标</label></td>
                    </tr>-->
						<tr>
							<td class="field">是否改造车：</td>
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
							<td class="field">检测机构：</td>
							<td><label>武清区机动车检测站</label></td>
							<td class="field">检测线：</td>
							<td><label>武清区轻汽检测线1</label></td>
						</tr>
						<tr>
							<td class="field">检测员：</td>
							<td><label></label></td>
							<td class="field">检测类型：</td>
							<td><label>年检</label></td>
						</tr>
						<tr>
							<td class="field">检测设备编号：</td>
							<td><label>0000000780</label></td>
							<!--<td class="field">外观员：</td>
                        <td><label>--</label></td>-->
						</tr>
						<tr>
							<td class="field">检测开始日期：</td>
							<td><label>2017-09-13 11:08:24</label></td>
							<td class="field">检测结束日期：</td>
							<td><label>2017-09-13 11:08:58</label></td>
						</tr>
						<tr>
							<td class="field">标准质量（kg）：</td>
							<td><label>1119</label></td>
							<td class="field">最大质量（kg）：</td>
							<td><label>1600</label></td>
						</tr>
						<tr>
							<td class="field">温度（℃）：</td>
							<td><label>30</label></td>
							<td class="field">大气压（hPa）：</td>
							<td><label>90.6</label></td>
						</tr>
						<tr>
							<td class="field">相对湿度（%）：</td>
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
							<!--<td class="field ct" colspan="2">λ</td>-->
							<td class="field ct" colspan="2">HC（10<sup style="font-style: ;">-6</sup>）</td>
							<td class="field ct" colspan="2">CO（%）</td>
							<td class="field ct" colspan="2">NO（10<sup style="font-style: ;">-6</sup>）</td>
						</tr>
						<tr>
							<td class="ct"><label></label></td>
							<!--<td class="ct"><label></label></td>-->
							<td class="ct"><label>5024</label></td>
							<td class="ct"><label>2540</label></td>
							<td class="ct"><label>5024</label></td>
							<td class="ct"><label>2540</label></td>
							<td class="ct"><label>5024</label></td>
							<td class="ct"><label>2540</label></td>
						</tr>
						<tr>
							<td class="field ct">测试结果</td>
							<!--<td class="ct"><label>1.09</label></td>-->
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
							<!--<td class="ct"><label>--</label></td>-->
							<td class="ct"><label>--</label></td>
							<td class="ct"><label>95</label></td>
							<td class="ct"><label>90</label></td>
							<td class="ct"><label>0.7</label></td>
							<td class="ct"><label>0.6</label></td>
							<td class="ct"><label>850</label></td>
							<td class="ct"><label>800</label></td>
						</tr>
						<tr>
							<td class="field ct">判断结果（合格不合格）</td>
							<!--<td class="ct"><label>--</label></td>-->
							<td class="ct"><label>--</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
							<td class="ct"><label>合格</label></td>
						</tr>
						<tr>
							<td class="field ct">裁决（通过/未通过）</td>
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
                        <td></td>
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
			</div>
		</div>
		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/NewVehicle/NewVehicleQuery.js"></script>
	</body>

</html>