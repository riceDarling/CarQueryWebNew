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
				新车录入
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车型:</div>
				<div class="inputgrp_second">
					<input id="txtUnit" class="ui-inputText" type="text">
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车辆识别代码:</div>
				<div class="inputgrp_second">
					<input id="txtUnit" class="ui-inputText" type="text">
				</div>
			</div>
			<div class="inputgrp" style="width: 100%;">
				<div class="btngrp_r">
					<a class="ui-search page-search" title="查询" style="background-image:url(../../images/index/searchbtn.png);background-repeat: no-repeat;background-position: center;"></a>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div style="width:100%;height:635px;background:#f4f4f4;">
			<div class="inputgrp">
				<div class="inputgrp_first">车辆型号：</div>
				<div class="inputgrp_second"><input id="txtlastdate" type="text" class="ui-inputText" disabled="true" /></div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车辆识别代码：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" /></div>
			</div>

			<div class="inputgrp">
				<div class="inputgrp_first">发动机型号：</div>
				<div class="inputgrp_second">
					<select id="selEngineModel" class="selectbox ui-inputText">
						<option value="-1">无</option>
						<option value="1">0909809</option>
						<option value="2">4587908</option>
						<option value="3">3452348</option>
						<option value="4">8945367</option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">发动机编号：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" /></div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">燃油类型：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" disabled="true" /></div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">总质量：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" disabled="true" /></div>
			</div>

			<div class="inputgrp">
				<div class="inputgrp_first">排放阶段：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" disabled="true" /></div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">审核时间：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" disabled="true" /></div>
			</div>
			<div class="inputgrp">
				<a href="#" class="easyui-linkbutton" iconCls="icon-save">录入</a>
			</div>
		</div>
		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../../Scripts/common.js"></script>
		<script type="text/javascript" src="../../Scripts/vaildateVIN.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/NewVehicle/NewVehicleInput.js"></script>
	</body>

</html>