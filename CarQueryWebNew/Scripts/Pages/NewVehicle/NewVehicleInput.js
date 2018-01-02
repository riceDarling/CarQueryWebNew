$("#btnQuery").click(function() {
	clear();

	var VehicleModel = $("#txtVehicleModel").val();

	if(VehicleModel.length == 0) {
		alert("请输入车型号！");
		return false;
	}
	var data = {
		VehicleModel: encodeURIComponent(VehicleModel),
		method: "VehicleModelQuery"
	};

	$.ajax({
		url: "../../AjaxHandler/NewCarHandler.ashx",
		data: data,
		dataType: "json",
		type: "post",
		success: function(json) {
			//alert("success");
			//if (json.code == "300")
			//{
			//    alert(json.message);
			//}
			var carList = json.rows;
			var result = json.result;
			var car = {};
			if(carList.length > 0) {
				car = carList[0];
				//$("#txtVINout").val(car.VIN);
				//$("#selVehicleKind").val(car.QCFL);
				//$("#selVehicleModel").val(car.BRAND);
				$("#txtVehicleModelNo").val(car.VEHICLEMODEL);
				$("#selEngineModel").val(car.FDJXH);
				$("#txtEngineNo").val(car.FDJXH);
				$("#txtWeight").val(car.ZDZZL);
				$("#txtFuelType").val(car.FUELTYPE);
				$("#txtStandard").val(car.STANDARD);

			} else {
				alert("无结果，请前往行政许可中心审核");
			}

			//{"rows":[{"":"1","":"1","ZDZZL":1,"STANDARD":"1"}],"totals":1,"result":"1"}
		},
		error: function(xhr) {
			alert("无结果");
		}
	});

});
$("#btnInsert").click(function() {
	$("#lblResult").text();
	$("#btnSure").css("display", "none");
	var VIN = $("#txtVINout").val();
	if(VIN.trim().length == 0) {
		alert("请输入车架号");
		return;
	}
	if(VIN.trim().length != 17) {
		alert("车架号位数错误，为" + VIN.trim().length + "位");
		return;
	}
	if(!vaildateVIN(VIN)) {
		alert("车架号格式错误");
		return;
	}
	var VehicleKind = $("#selVehicleKind").val(); //汽车分类
	var VehicleModel = $("#selVehicleModel").val(); //商标
	var VehicleModelNo = $("#txtVehicleModelNo").val(); //型号
	var User = $("#txtUser").val();
	var Phone = $("#txtPhone").val();
	var Address = $("#txtAddress").val();
	var data = {
		VIN: VIN,
		VehicleKind: encodeURIComponent(VehicleKind), //汽车分类
		VehicleModel: encodeURIComponent(VehicleModel), //商标
		VehicleModelNo: encodeURIComponent(VehicleModelNo), //型号
		User: encodeURIComponent(User),
		Phone: encodeURIComponent(Phone),
		Address: encodeURIComponent(Address),
		method: "VINInsert"
	};

	$.ajax({
		url: "../../AjaxHandler/NewCarHandler.ashx",
		data: data,
		dataType: "json",
		type: "post",
		success: function(json) {
			alert(json.message);
			if(json.code == "1") {
				$("#lblResult").css("color", "green");
				$("#lblResult").text("通过");
				$("#btnSure").css("display", "inline");
			} else {
				$("#lblResult").css("color", "red");
				$("#lblResult").text("不通过");
				$("#btnSure").css("display", "none");
			}
		},
		error: function(xhr) {
			alert("暂时无法录入，请检查网络");
		}
	});
});
$("#btnSure").click(function() {
	var VIN = $("#txtVINout").val();
	var date = new Date();
	var ReportNumber = "" + date.getFullYear() + (date.getMonth() + 1) + date.getDate() + date.getHours() + date.getMinutes() + date.getSeconds() + date.getMilliseconds();
	//"M+": this.getMonth() + 1, //月份
	//    "d+": this.getDate(), //日
	//        "h+": this.getHours(), //小时
	//            "m+": this.getMinutes(), //分
	//                "s+": this.getSeconds(), //秒
	//                    "q+": Math.floor((this.getMonth() + 3) / 3), //季度
	//                        "S": this.getMilliseconds() //毫秒
	//console.log(ReportNumber);
	//var Standard = $("#txtStandard").val();+ "&Standard=" + Standard

	var VehicleKind = escape($("#selVehicleKind").find("option:selected").text());
	var VehicleModel = escape($("#selVehicleModel").find("option:selected").text());
	var VehicleModelNo = escape($("#txtVehicleModelNo").val());
	var EngineModel = escape($("#selEngineModel").find("option:selected").text());
	var EngineNo = escape($("#txtEngineNo").val());
	var Weight = escape($("#txtWeight").val());
	var data = {
		XXGKBH: encodeURIComponent(ReportNumber),
		VIN: encodeURIComponent(VIN),
		method: "GenerateReprot"
	};
	$.ajax({
		url: "../../AjaxHandler/NewCarHandler.ashx",
		data: data,
		dataType: "json",
		type: "post",
		success: function(json) {
			if(json.code == "2") {
				$("#ReportFrame").attr("src", "newCarReport.html?VIN=" + json.message +
					"&VehicleKind=" + VehicleKind + "&VehicleModel=" + VehicleModel +
					"&VehicleModelNo=" + VehicleModelNo + "&EngineModel=" + EngineModel + "&EngineNo=" + EngineNo + "&Weight=" + Weight);
			} else if(json.code == "1") {
				$("#ReportFrame").attr("src", "newCarReport.html?VIN=" + VIN +
					"&VehicleKind=" + VehicleKind + "&VehicleModel=" + VehicleModel +
					"&VehicleModelNo=" + VehicleModelNo + "&EngineModel=" + EngineModel + "&EngineNo=" + EngineNo + "&Weight=" + Weight);
			} else {
				alert(json.message);
			}

		},
		error: function(xhr) {}
	});

});

function clear() {
	$("#txtVINout").val("");
	$("#selVehicleKind").val("-1");
	$("#selVehicleModel").val("-1");
	$("#txtVehicleModelNo").val("");
	$("#selEngineModel").val("-1");
	$("#txtEngineNo").val("");
	$("#txtWeight").val("");
	$("#txtFuelType").val("");
	$("#txtStandard").val("");
	$("#lblResult").text("");
	$("#btnSure").css("display", "none");
}