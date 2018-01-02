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
		<div class="ui-container" >
			<div class="ui-queryResult">
				外转车查询
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">区县：</div>
				<div class="inputgrp_second">
					<select class="ui-inputText">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车辆种类：</div>
				<div class="inputgrp_second">
					<select class="ui-inputText">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车牌号码：</div>
				<div class="inputgrp_second"><input id="txtlastdate" class="ui-inputText" type="text" /></div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车牌颜色：</div>
				<div class="inputgrp_second">
					<select class="ui-inputText">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车辆用途：</div>
				<div class="inputgrp_second">
					<select class="ui-inputText">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">车辆类别：</div>
				<div class="inputgrp_second">
					<select class="ui-inputText">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">燃油种类：</div>
				<div class="inputgrp_second">
					<select class="ui-inputText">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="inputgrp">
				<div class="inputgrp_first">初登日期：</div>
				<div class="inputgrp_second">
					<div style="padding-left:0;"><input type="text" class="ui-inputText" onclick="WdatePicker()" /></div>
					<div style="padding-right:0;"><span>至</span><input class="ui-inputText" type="text" onclick="WdatePicker()" /></div>
				</div>
			</div>
			<div class="inputgrp" style="width: 100%;">
				<div class="btngrp_r">
					<a class="ui-search page-search" title="查询" style="background-image:url(../../images/index/searchbtn.png);background-repeat: no-repeat;background-position: center;"></a>
					<a class="ui-revoke" title="撤销" style="background-image:url(../../images/index/cancelbtn.png);background-repeat: no-repeat;background-position: center;"></a>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div style="width:100%;height:635px;background:#f4f4f4;">
			<div style="width:100%;height:100%;">
				<table class="page-table"></table>
			</div>
		</div>
		<script type="text/javascript" src="../../Scripts/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../../Scripts/jquery.easyui-1.4.5.min.js"></script>
		<script type="text/javascript" src="../../Scripts/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../../Scripts/DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="../../Scripts/Pages/NewVehicle/OutsideVehicleQuery.js"></script>
	</body>

</html>