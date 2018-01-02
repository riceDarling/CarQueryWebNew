var _CUNITCODE;
$.ajax({
    url: '../../AjaxHandler/CheckPointHandler.ashx?method=QueryJCZ',
	type: 'post',
	dataType: 'json',
	timeout: 10000, //设定超时
	cache: false, //禁用缓存
	error: function(xml) {

	},
	success: function(json) {
		var arrCounty = [];
		var arrUnit = [];
		for(var i = 0; i < json.rows.length; i++) {
			arrCounty.push(json.rows[i].COUNTY);
            arrUnit.push(json.rows[i]);
      
			//$(".jcz").append("<div onclick=\" window.location.href='shipinzhongzhuan.html?UnitName=" + escape(json.rows[i].CUNITNAME)+"'\" style=\"width:100%;height: 27px; line-height:27px; text-indent:15px; \"><i class=\"icon-file\"></i>&nbsp;" + json.rows[i].CUNITNAME + "</div>");
		}
		arrCounty = arrCounty.unique();
        //arrUnit = arrUnit.unique();

        //console.log(arrCounty);
        //console.log(arrUnit);
        

		for(var i = 0; i < arrCounty.length; i++) {
			//$(".jcz").append("<div class=\"county\" value=\"" + arrUnit[j].COUNTY+"\" name=\"county" + i +"\" style=\"width:100%;height:27px; line-height:27px;text-indent:15px;\"><i class=\"icon-plus\"></i>&nbsp;" + arrCounty[i] + "</div>");
			var flag = true;
			for(var j = 0; j < arrUnit.length; j++) {
				if(flag && arrCounty[i] != "涉县") {
					$(".jcz").append("<div class=\"county\" value=\"" + arrCounty[j].AREACODE + "\" name=\"county" + i + "\" style=\"width:100%;height:27px; line-height:27px;text-indent:15px;\"><i class=\"icon-plus\"></i>&nbsp;" + arrCounty[i] + "</div>");
					flag = false;
				}
				if(arrUnit[j].COUNTY == arrCounty[i] && arrUnit[j].UNITNAME != "400" && arrUnit[j].UNITNAME != "测试检测站") {
					$(".jcz").append("<div class=\"unit" + i + "\" value=\"" + arrUnit[j].UNITCODE + "\" name=\"unit\" onclick=\" tablerefresh(1, 50);\" style=\"display:none;width:100%;height: 27px; line-height:27px; text-indent:15px; \">&nbsp;&nbsp;&nbsp;&nbsp;<i class=\"icon-file\"></i>&nbsp;&nbsp;" + arrUnit[j].UNITNAME + "</div>");
					arrUnit.splice(j, 1);
					j--;
				}
			}
        }

		$(".county,div[name='unit']").click(function() {
			var temp = $(this).attr("value");
			//console.log(temp);
			$("#txtUnit").val(temp);
		});
		$(".county").click(function() {
			var self = $(this);
			var selfIcon = self.find("i");
			if(selfIcon.hasClass("icon-plus")) {
				//alert("+");
				selfIcon.removeClass("icon-plus");
				selfIcon.addClass("icon-minus");
			} else if(selfIcon.hasClass("icon-minus")) {
				// alert("-");
				selfIcon.removeClass("icon-minus");
				selfIcon.addClass("icon-plus");
			}

			$(".county").each(function() {
				if($(this).attr("name") != self.attr("name")) {
					$(this).find("i").removeClass("icon-minus");
					$(this).find("i").addClass("icon-plus");
				}
			});

			var temp = self.attr("name").substring(self.attr("name").indexOf('y') + 1, self.attr("name").length);
			//console.log(temp);
			var selfUnit = $(".unit" + temp);
			if(selfUnit.css("display") == "none") {
				selfUnit.css("display", "block");

			} else if(selfUnit.css("display") == "block") {
				selfUnit.css("display", "none");
			}
			$("div[name='unit']").each(function() {
				if($(this).attr("class") != selfUnit.attr("class")) {
					$(this).css("display", "none");
				}
			});

		});
	}
});

Array.prototype.unique = function() {
	var res = [];
	var json = {};
	for(var i = 0; i < this.length; i++) {
		if(!json[this[i]]) {
			res.push(this[i]);
			json[this[i]] = 1;
		}
	}
	return res;
}

function GetDateStr(value) {
    var dd = new Date(value);
    var y = dd.getFullYear();
    var m = dd.getMonth() + 1; 
    var d = dd.getDate();
    return y + "-" + m + "-" + d;
}
function dateString(str) {
    var d = eval('new ' + str.replace(/\//g, ''));
    return GetDateStr(d);
}
function completeZero(num, length) {
    var numstr = num.toString();
    var l = numstr.length;
    if (numstr.length >= length) { return numstr; }

    for (var i = 0; i < length - l; i++) {
        numstr = "0" + numstr;
    }
    return numstr;
}
$('.page-table').datagrid({
	columns: [
	[       {
				field: '',
				title: '',
				checkbox: true
            },
            {
                field: 'CUNITCODE',
                title: '检测站编号',
                width: 100,
                align: 'center',
                hidden: true,
            },
			{
                field: 'CUNITNAME',
				title: '检测站名称',
				width: 100,
                align: 'center',
			},
			{
                field: 'CLINKMAN',
				title: '联系人',
				width: 100,
				align: 'center'
			},
			{
                field: 'CPHONE',
				title: '联系电话',
				width: 100,
				align: 'center'
			},
			{
                field: 'COUNTY',
				title: '所在区县',
				width: 100,
                align: 'center',
			},
			{
                field: 'DEXPIRATION',
				title: '资质有效期',
				width: 200,
                align: 'center',
                formatter: function (value, row, index) {
                    value = GetDateStr(value);
                    var now = new Date();
                    var nowStr = GetDateStr(now);
                    if (value > nowStr) {
                        return value + '&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:green;">未过期</span>'
                    } else {
                        return value + '&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;">已过期</span>'
                    }
                }
			},
			{
				field: 'operator',
				align: 'center',
				title: '操作',
				width: 100,
                formatter: function (value, row, index) {
                    return '<a href=\"javascript:myDialog(' + row.CUNITCODE +')\">查看详情</a>';
				}
			}

		]
	],
	fitColumns: true,
	striped: true,
	pagination: true,
	rownumbers: true,
    height: 310,
    width: $(window).width()-15,
    selectOnCheck: true,
    onCheck: function (index, row) {
        _CUNITCODE = row.CUNITCODE;
    },
	resizable: true,
	loadMsg: '正在加载中...',
	pageSize: 10,
	pageList: [10,20, 50, 100, 150],
    singleSelect: true

});



function tablerefresh(_pagenumber, _pagesize) {
	$.ajax({
        url: "../../AjaxHandler/CheckPointHandler.ashx",
		data: {
            method: 'GetTUNITs',
			pagenumber: _pagenumber,
			pagesize: _pagesize,
            //county: $('.county').val(),
			checkmethod: $('._checkmethod').val(),
			checkresult: $('._checkresult').val(),
			UnitName: $("#txtUnit").val()
		},
		async: false,
        dataType: "json",
		type: "post",
		success: function(json) {
            $('.page-table').datagrid('loadData', json);
		},
		error: function(xhr) {

		}
	});
}

tablerefresh(1, 10);

$('.page-search').click(function() {
	tablerefresh(1,10);
});

$('.page-table').datagrid('getPager').pagination({
	onSelectPage: function(pageNumber, pageSize) {
		tablerefresh(pageNumber, pageSize);
	}
});

//获取参数
function getQueryParams(queryParams) {
    var county = document.getElementById("txtCounty").value;

    queryParams.county = county;

	return queryParams;

}
//增加查询参数，重新加载表格
function reloadgrid() {

	//查询参数直接添加在queryParams中
	var queryParams = $('#tt').datagrid('options').queryParams;
	getQueryParams(queryParams);
	$('#tt').datagrid('options').queryParams = queryParams;
    $("#tt").datagrid('reload');
}

function myDialog(code) {
    var cunitCode = completeZero(code, 3);
    $.ajax({
        url: "../../AjaxHandler/CheckPointHandler.ashx",
        data: {
            method: 'GetBasicInfo',
            checkmethod: $('._checkmethod').val(),
            checkresult: $('._checkresult').val(),
            cunitCode: cunitCode
        },
        async: false,
        dataType: "JSON",
        type: "post",
        success: function (json) {
           // console.log(json);
            $('#CUNITCODE-vaule').html(json.rows[0].CUNITCODE);
            $('#CUNITNAME-vaule').html(json.rows[0].CUNITNAME);
            $('#CUNITABBREVIATION-vaule').html(json.rows[0].CUNITABBREVIATION);
            $('#UNITADDRESS-vaule').html(json.rows[0].UNITADDRESS);
            $('#NPOSTCODE-vaule').html(json.rows[0].NPOSTCODE);
            $('#CITYCODE-vaule').html(json.rows[0].CITYCODE);
            $('#COUNTY-vaule').html(json.rows[0].COUNTY);
            $('#DREGDATE-vaule').html(dateString(json.rows[0].DREGDATE));
            $('#CDIRECTOR-vaule').html(json.rows[0].CDIRECTOR);
            $('#CLINKMAN-vaule').html(json.rows[0].CLINKMAN);
            $('#CPHONE-vaule').html(json.rows[0].CPHONE);
            $('#CMA-vaule').html(json.rows[0].CMA);
            $('#PROVAPPROVE-vaule').html(json.rows[0].PROVAPPROVE);
            $('#NEQUIPMENTNUM-vaule').html(json.rows[0].NEQUIPMENTNUM);
            $('#CIPADDRESS-vaule').html(json.rows[0].CIPADDRESS);
            $('#NPORTNUMBER-vaule').html(json.rows[0].NPORTNUMBER);
            if(json.rows[0].STATUS == 0){
                $('#STATUS-vaule').html("正常");
            }else{
                $('#STATUS-vaule').html("不正常");
            }
            $('#EXT_COL1-vaule').html(json.rows[0].EXT_COL1);
            $('#EXT_COL2-vaule').html(json.rows[0].EXT_COL2);

            if (json.rows[0].EXT_COL3 == 1) {
                $('#EXT_COL3-vaule').html("是");
            } else {
                $('#EXT_COL3-vaule').html("否");
            }
            if (json.rows[0].ISLOCK == 1) {
                $('#ISLOCK-vaule').html("是");
            } else {
                $('#ISLOCK-vaule').html("否");
            }
            $('#CNOCHECK-vaule').html(json.rows[0].CNOCHECK);
            $('#LINKDATE-vaule').html(dateString(json.rows[0].LINKDATE));
            $('#CMEMO-vaule').html(json.rows[0].CMEMO);
        },
        error: function (xhr) {

        }
    });
  
	$('#win').window('open');
}
function tunitInsert() {
    var checkStr = $("#select2 option:selected").map(function () { return $(this).val(); }).get().join(",");
    var dregdate = $('#DREGDATE-input').next().children('input:eq(1)').val();
    var linkdate = $('#LINKDATE-input').next().children('input:eq(1)').val();
 
    $.ajax({
        url: "../../AjaxHandler/CheckPointHandler.ashx",
        data: {
            method: 'TUNITInsert',
            checkmethod: $('._checkmethod').val(),
            checkresult: $('._checkresult').val(),
            CUNITCODE: $('#CUNITCODE-input').next().children("input:eq(0)").val(),
            CUNITNAME: $('#CUNITNAME-input').next().children("input:eq(0)").val(),
            //CUNITNAME: $('#CUNITNAME-input').val(),
            CUNITABBREVIATION: $('#CUNITABBREVIATION-input').next().children("input:eq(0)").val(),
            //CUNITABBREVIATION: $('#CUNITABBREVIATION-input').val().trim(),
            UNITADDRESS: $('#UNITADDRESS-input').next().children("input:eq(0)").val(),
            //UNITADDRESS: $('#UNITADDRESS-input').val().trim(),
            NPOSTCODE: $('#NPOSTCODE-input').next().children("input:eq(0)").val(),
            //NPOSTCODE: $('#NPOSTCODE-input').val().trim(),
            CITYCODE: $('#CITYCODE-input').next().children("input:eq(1)").val(),
            //CITYCODE: $('#CITYCODE-input').val().trim(),
            COUNTY: $('#COUNTY-input').next().children("input:eq(1)").val(),
            //COUNTY: $('#COUNTY-input').val().trim(),
            DREGDATE: dregdate,
            CDIRECTOR: $('#CDIRECTOR-input').next().children("input:eq(0)").val(),
            //CDIRECTOR: $('#CDIRECTOR-input').val().trim(),
            CLINKMAN: $('#CLINKMAN-input').next().children("input:eq(0)").val(),
            //CLINKMAN: $('#CLINKMAN-input').val().trim(),
            CPHONE: $('#CPHONE-input').next().children("input:eq(0)").val(),
            //CPHONE: $('#CPHONE-input').val().trim(),
            CMA: $('#CMA-input').next().children("input:eq(0)").val(),
            //CMA: $('#CMA-input').val().trim(),
            PROVAPPROVE: $('#PROVAPPROVE-input').next().children("input:eq(0)").val(),
            //PROVAPPROVE: $('#PROVAPPROVE-input').val().trim(),
            NEQUIPMENTNUM: $('#NEQUIPMENTNUM-input').next().children("input:eq(0)").val(),
            //NEQUIPMENTNUM: $('#NEQUIPMENTNUM-input').val().trim(),
            CIPADDRESS: $('#CIPADDRESS-input').next().children("input:eq(0)").val(),
            //CIPADDRESS: $('#CIPADDRESS-input').val().trim(),
            NPORTNUMBER: $('#NPORTNUMBER-input').next().children("input:eq(0)").val(),
            //NPORTNUMBER: $('#NPORTNUMBER-input').val().trim(),
            STATUS: $('#STATUS-input').next().children("input:eq(1)").val(),
            //STATUS: $('#STATUS-input').val(),
            EXT_COL1: $('#EXT_COL1-input').next().children("input:eq(0)").val(),
            //EXT_COL1: $('#EXT_COL1-input').val().trim(),
            EXT_COL2: $('#EXT_COL2-input').next().children("input:eq(0)").val(),
            //EXT_COL2: $('#EXT_COL2-input').val().trim(),
            EXT_COL3: $('#EXT_COL3-input').next().children("input:eq(1)").val(),
            //EXT_COL3: $('#EXT_COL3-input').val(),
            ISLOCK: $('#ISLOCK-input').next().children("input:eq(1)").val(),
            //ISLOCK: $('#ISLOCK-input').val(),
            LINKDATE: linkdate,
            CNOCHECK: checkStr,
            CMEMO: $('#CMEMO-input').next().children("input:eq(0)").val(),
            //CMEMO: $('#CMEMO-input').val().trim(),
        },
        async: false,
        dataType: "json",
        type: "post",
        success: function (json) {
            alert(json.message);
        },
        error: function (xhr) {

        }
    });
}

function qualificationInsert() {
    var cunitcode = $('#CUNITCODE-input').next().children("input:eq(0)").val();
    var dexpiration = $('#DEXPIRATION-input').next().children('input:eq(1)').val();
    var ext_col4 = $('#EXT_COL4-input').next().children("input:eq(0)").val();
    $.ajax({
        url: "../../AjaxHandler/CheckPointHandler.ashx",
        data: {
            method: 'QualificationInsert',
            checkmethod: $('._checkmethod').val(),
            checkresult: $('._checkresult').val(),
            CUNITCODE: cunitcode,
            ORGCODE: $('#ORGCODE-input').val(),
            CLICENSENUM: $('#CLICENSENUM-input').val(),
            CPERMIT: $('#CPERMIT-input').val(),
            CECONOMICTYPE: $('#CECONOMICTYPE-input').val(),
            NFIXEDASSETS: $('#NFIXEDASSETS-input').val(),
            NREGISTEREDCAPITAL: $('#NREGISTEREDCAPITAL-input').val(),
            LONGITUDE: $('#LONGITUDE-input').val(),
            LATITUDE: $('#LATITUDE-input').val(),
            NTESTSITEAREA: $('#NTESTSITEAREA-input').val(),
            STAFFTOTAL: $('#STAFFTOTAL-input').val(),
            SENIORENGINEERNUM: $('#SENIORENGINEERNUM-input').val(),
            ASSISTANTENGINEERNUM: $('#ASSISTANTENGINEERNUM-input').val(),
            TECHNICALDIRECTOR: $('#TECHNICALDIRECTOR-input').val(),
            ASSESSQUALIFIEDNUM: $('#ASSESSQUALIFIEDNUM-input').val(),
            ENGINEERNUM: $('#ENGINEERNUM-input').val(),
            TECHNICIANNUM: $('#TECHNICIANNUM-input').val(),
            QUALITYDIRECTOR: $('#QUALITYDIRECTOR-input').val(),
            LEGAL: $('#LEGAL-input').val(),
            TESTSAFE: $('#TESTSAFE-input').val(),
            TESTCOMB: $('#TESTCOMB-input').val(),
            AGENCYTYPE: $('#AGENCYTYPE-input').val(),
            EXT_COL4: ext_col4,
            DEXPIRATION: dexpiration,
            CRANGE: $('#CRANGE-input').val(),
        },
        async: false,
        dataType: "json",
        type: "post",
        success: function (json) {
            alert(json.message);
        }
    });
}
function tunitUpdata() {
    var checkStr = $("#select2").map(function () { return $(this).val(); }).get().join(",");
    var dregdate = $('#DREGDATE-updata').next().children('input:eq(1)').val();
    var linkdate = $('#LINKDATE-updata').next().children('input:eq(1)').val();

    $.ajax({
        url: "../../AjaxHandler/CheckPointHandler.ashx",
        data: {
            method: '',
            checkmethod: $('._checkmethod').val(),
            checkresult: $('._checkresult').val(),
            CUNITCODE: $('#CUNITCODE-updata').next().children("input:eq(0)").val(),
            CUNITNAME: $('#CUNITNAME-updata').val(),
            CUNITABBREVIATION: $('#CUNITABBREVIATION-updata').val().trim(),
            UNITADDRESS: $('#UNITADDRESS-updata').val().trim(),
            NPOSTCODE: $('#NPOSTCODE-updata').val().trim(),
            CITYCODE: $('#CITYCODE-updata').val().trim(),
            COUNTY: $('#COUNTY-updata').val().trim(),
            DREGDATE: dregdate,
            CDIRECTOR: $('#CDIRECTOR-updata').val().trim(),
            CLINKMAN: $('#CLINKMAN-updata').val().trim(),
            CPHONE: $('#CPHONE-updata').val().trim(),
            CMA: $('#CMA-updata').val().trim(),
            PROVAPPROVE: $('#PROVAPPROVE-updata').val().trim(),
            NEQUIPMENTNUM: $('#NEQUIPMENTNUM-updata').val().trim(),
            CIPADDRESS: $('#CIPADDRESS-updata').val().trim(),
            NPORTNUMBER: $('#NPORTNUMBER-updata').val().trim(),
            STATUS: $('#STATUS-updata').val(),
            EXT_COL1: $('#EXT_COL1-updata').val().trim(),
            EXT_COL2: $('#EXT_COL2-updata').val().trim(),
            EXT_COL3: $('#EXT_COL3-updata').val(),
            ISLOCK: $('#ISLOCK-updata').val(),
            LINKDATE: linkdate,
            CNOCHECK: checkStr,
            CMEMO: $('#CMEMO-updata').val().trim(),
        },
        async: false,
        dataType: "json",
        type: "post",
        success: function (json) {
            alert(json.message);
        }
    });
}
$(document).ready(function () {
    $('.tabs li:eq(1)').click(function () {
        $.ajax({
            url: "../../AjaxHandler/CheckPointHandler.ashx",
            data: {
                method: 'GetQualificationInfo',
                checkmethod: $('._checkmethod').val(),
                checkresult: $('._checkresult').val(),
                cunitCode: $('#CUNITCODE-vaule').html(),
            },
            async: false,
            dataType: "json",
            type: "post",
            success: function (json) {

                $('#ORGCODE-vaule').html(json.rows[0].ORGCODE);
                $('#CLICENSENUM-vaule').html(json.rows[0].CLICENSENUM);
                $('#CPERMIT-vaule').html(json.rows[0].CPERMIT);
                $('#CECONOMICTYPE-vaule').html(json.rows[0].CECONOMICTYPE);
                $('#NFIXEDASSETS-vaule').html(json.rows[0].NFIXEDASSETS);
                $('#NREGISTEREDCAPITAL-vaule').html(json.rows[0].NREGISTEREDCAPITAL);
                $('#LONGITUDE-vaule').html(json.rows[0].LONGITUDE);
                $('#LATITUDE-vaule').html(json.rows[0].LATITUDE);
                $('#NTESTSITEAREA-vaule').html(json.rows[0].NTESTSITEAREA);
                $('#STAFFTOTAL-vaule').html(json.rows[0].STAFFTOTAL);
                $('#SENIORENGINEERNUM-vaule').html(json.rows[0].SENIORENGINEERNUM);
                $('#ASSISTANTENGINEERNUM-vaule').html(json.rows[0].ASSISTANTENGINEERNUM);
                $('#TECHNICALDIRECTOR-vaule').html(json.rows[0].TECHNICALDIRECTOR);
                $('#ASSESSQUALIFIEDNUM-vaule').html(json.rows[0].ASSESSQUALIFIEDNUM);
                $('#ENGINEERNUM-vaule').html(json.rows[0].ENGINEERNUM);
                $('#TECHNICIANNUM-vaule').html(json.rows[0].TECHNICIANNUM);
                $('#QUALITYDIRECTOR-vaule').html(json.rows[0].QUALITYDIRECTOR);
                $('#LEGAL-vaule').html(json.rows[0].LEGAL);
                $('#TESTSAFE-vaule').html(json.rows[0].TESTSAFE);
                $('#TESTCOMB-vaule').html(json.rows[0].TESTCOMB);
                $('#AGENCYTYPE-vaule').html(json.rows[0].AGENCYTYPE);
                $('#EXT-COL4-vaule').html(json.rows[0].EXT_COL4);
                $('#DEXPIRATION-vaule').html(dateString(json.rows[0].DEXPIRATION));
                $('#CRANGE-vaule').html(json.rows[0].CRANGE);
            }
        });
    });
    $('.tabs li:eq(2)').click(function () {
        
    })

})
/*撤销*/
$('.ui-revoke').click(function () {
    window.location.reload();
})
/*增加*/
$('.ui-add').click(function () {

    $.ajax({
        url: '../../AjaxHandler/CheckPointHandler.ashx?method=GetCunitCode',
        type: 'get',
        dataType: 'json',
        cache: false, //禁用缓存
        success: function (json) {
            $('#CUNITCODE-input').next().children("input:eq(0)").val(json.result[0].CODE);
        }
    });

    $('#add').window('open');
})

/*编辑*/
$('.ui-edit').click(function () {
    var cunitCode = completeZero(_CUNITCODE, 3);
    $.ajax({
        url: "../../ajaxhandler/checkpointhandler.ashx",
        data: {
            method: 'GetBasicInfo',
            checkmethod: $('._checkmethod').val(),
            checkresult: $('._checkresult').val(),
            cunitcode: cunitCode,
        },
        async: false,
        datatype: "json",
        type: "post",
        success: function (result) {
            var json = $.parseJSON(result)
           // console.log(json);
            $('#CUNITCODE-input').next().children("input:eq(0)").val(json.rows[0].CUNITCODE);
            //$('#CUNITCODE-input').val(json.rows[0].CUNITCODE);
            $('#CUNITNAME-input').next().children("input").val(json.rows[0].CUNITNAME);
            //$('#CUNITNAME-input').val(json.rows[0].CUNITNAME);
            $('#CUNITABBREVIATION-input').next().children("input:eq(0)").val(json.rows[0].CUNITABBREVIATION);
            //$('#CUNITABBREVIATION-input').val(json.rows[0].CUNITABBREVIATION);
            $('#UNITADDRESS-input').next().children("input:eq(0)").val(json.rows[0].UNITADDRESS);
            //$('#UNITADDRESS-input').val(json.rows[0].UNITADDRESS);
            $('#NPOSTCODE-input').next().children("input:eq(0)").val(json.rows[0].NPOSTCODE);
            //$('#NPOSTCODE-input').val(json.rows[0].NPOSTCODE);
            $('#CITYCODE-input').next().children("input:eq(1)").val(json.rows[0].CITYCODE);
            //$('#CITYCODE-input').val(json.rows[0].CITYCODE);
            $('#COUNTY-input').next().children("input:eq(1)").val(json.rows[0].COUNTY);
            //$('#COUNTY-input').val(json.rows[0].COUNTY);
            $('#DREGDATE-input').next().children("input:eq(0)").val(dateString(json.rows[0].DREGDATE));
            //$('#DREGDATE-input').val(dateString(json.rows[0].DREGDATE));
            $('#CDIRECTOR-input').next().children("input:eq(0)").val(json.rows[0].CDIRECTOR);
            //$('#CDIRECTOR-input').val(json.rows[0].CDIRECTOR);
            $('#CLINKMAN-input').next().children("input:eq(0)").val(json.rows[0].CLINKMAN);
            //$('#CLINKMAN-input').val(json.rows[0].CLINKMAN);
            $('#CPHONE-input').next().children("input:eq(0)").val(json.rows[0].CPHONE);
            //$('#CPHONE-input').val(json.rows[0].CPHONE);
            $('#CMA-input').next().children("input:eq(0)").val(json.rows[0].CMA);
            //$('#CMA-input').val(json.rows[0].CMA);
            $('#PROVAPPROVE-input').next().children("input:eq(0)").val(json.rows[0].PROVAPPROVE);
            //$('#PROVAPPROVE-input').val(json.rows[0].PROVAPPROVE);
            $('#NEQUIPMENTNUM-input').next().children("input:eq(0)").val(json.rows[0].NEQUIPMENTNUM);
            //$('#NEQUIPMENTNUM-input').val(json.rows[0].NEQUIPMENTNUM);
            $('#CIPADDRESS-input').next().children("input:eq(0)").val(json.rows[0].CIPADDRESS);
            //$('#CIPADDRESS-input').val(json.rows[0].CIPADDRESS);
            $('#NPORTNUMBER-input').next().children("input:eq(0)").val(json.rows[0].NPORTNUMBER);
            //$('#NPORTNUMBER-input').val(json.rows[0].NPORTNUMBER);
            $('#STATUS-input').next().children("input:eq(1)").val(json.rows[0].STATUS);
            $('#EXT_COL1-input').next().children("input:eq(0)").val(json.rows[0].EXT_COL1);
            //$('#EXT_COL1-input').val(json.rows[0].EXT_COL1);
            $('#EXT_COL2-input').next().children("input:eq(0)").val(json.rows[0].EXT_COL2);
            //$('#EXT_COL2-input').val(json.rows[0].EXT_COL2);
            $('#EXT_COL3-input').next().children("input:eq(1)").val(json.rows[0].EXT_COL3);
            $('#ISLOCK-input').next().children("input:eq(1)").val(json.rows[0].ISLOCK);
            $('#select2 option:selected').next().children("input:eq(0)").val(json.rows[0].CNOCHECK);
            //$('#CNOCHECK-input').val(json.rows[0].CNOCHECK);
            $('#LINKDATE-input').next().children("input:eq(0)").val(dateString(json.rows[0].LINKDATE));
            //$('#LINKDATE-input').val(dateString(json.rows[0].LINKDATE));
            $('#CMEMO-input').next().children("input:eq(0)").val(json.rows[0].CMEMO);
            //$('#CMEMO-input').val(json.rows[0].CMEMO);
        },
        error: function (xhr) {

        }
    });
    $('#add').window('open');
})
/*删除*/
$('.ui-delete').click(function () {
    $.messager.confirm('删除', '确定要删除吗?', function (r) {
        if (r) {
            //alert('确认: ' + r);
            var cunitCode = completeZero(_CUNITCODE, 3);
            //alert(cunitCode);
            $.ajax({
                url: '../../AjaxHandler/CheckPointHandler.ashx',
                type: 'post',
                dataType: 'json',
                data: {
                    method: 'TUNITDelete',
                    checkmethod: $('._checkmethod').val(),
                    checkresult: $('._checkresult').val(),
                    cunitCode: cunitCode,
                },
                success: function (json) {
                    alert(json.message);
                }
            });
        }
    });
})
/
/*关闭按钮*/
$('.closeDialogBtn').click(function () {
    $('#win').window('close');
});

//移到右边
$('#tjwqAdd').click(function () {
    //先判断是否有选中
    if (!$("#select1 option").is(":selected")) {
        alert("请选择需要移动的选项")
    }
    //获取选中的选项，删除并追加给对方
    else {
        $('#select1 option:selected').appendTo('#select2');
    }
});

//移到左边
$('#tjwqRemove').click(function () {
    //先判断是否有选中
    if (!$("#select2 option").is(":selected")) {
        alert("请选择需要移动的选项")
    } else {
        $('#select2 option:selected').appendTo('#select1');
    }
});

//全部移到右边
$('#tjwqAddAll').click(function () {
    //获取全部的选项,删除并追加给对方
    $('#select1 option').appendTo('#select2');
});

//全部移到左边
$('#tjwqRemoveAll').click(function () {
    $('#select2 option').appendTo('#select1');
});


$('#checkDetails').click(function () {
    $('#check').window('open');
})

$('#inspectionEquipment').click(function () {
    $('#check2').window('open');
})

$('#checkLine').click(function () {
    $('#check3').window('open');
})


$('#tjwqaddPersonnel').click(function () {
    $('#addTjwqPersonnel').window('open');
})

$('#tjwqeditPersonnel').click(function () {
    $('#addTjwqPersonnel').window('open');
})
/*删除*/
$('#tjwqdeletePersonnel').click(function () {
    $.messager.confirm('删除', '确定要删除吗?', function (r) {
        if (r) {
            alert('确认: ' + r);
        }
    });
});
/**/
$('#tjwqAddEquipment').click(function () {
    $('#addTjwqEquipment').window('open');
})

$('#tjwqEditEquipment').click(function () {
    $('#addTjwqEquipment').window('open');
})
$('#tjwqDeleteEquipment').click(function () {
    $.messager.confirm('删除', '确定要删除吗?', function (r) {
        if (r) {
            alert('确认: ' + r);
        }
    });
});

/**/
$('#tjwqAddLine').click(function () {
    $('#addTjwqLine').window('open');
})

$('#tjwqEditLine').click(function () {
    $('#addTjwqLine').window('open');
})
$('#tjwqDeleteLine').click(function () {
    $.messager.confirm('删除', '确定要删除吗?', function (r) {
        if (r) {
            alert('确认: ' + r);
        }
    });
});



