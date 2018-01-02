$(".page-search").click(function() {
	fresh();
});

function fresh() {

	var lastdate = $("#txtlastdate").val();
	var nextdate = $("#txtnextdate").val();
	var UnitCode = $("#UnitCode").val();
	if(lastdate.length == 0 || nextdate.length == 0) {
		alert("请选择日期");
	}
	lastdate += " 00:00:00";
	nextdate += " 23:59:59";

	//alert("./picture.html?date=" + data + "&UnitCode=" + CheckName);
	$("#mainFrame").attr("src", "./picture.html?lastdate=" + lastdate + "&nextdate=" + nextdate + "&UnitCode=" + UnitCode);
}
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
$('.page-table').datagrid({
	columns: [
		[{
				field: '',
				title: '',
				checkbox: true
			},
			{
				field: 'CNUMBERPLATE',
				title: '检测站简称',
				width: '119px',
				align: 'center'
			},
			{
				field: 'CPLATETYPE',
				title: '检车站名称',
				width: '119px',
				align: 'center',
			},
			{
				field: 'CVIN',
				align: 'center',
				title: '检测站地址',
				width: '119px'
			},
			{
				field: 'DREGISTERSS',
				align: 'center',
				title: '联系人',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '联系电话',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '负责人',
				width: '119px'
			},
			{
				field: 'DREGISTERSS',
				align: 'center',
				title: '注册时间',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '是否注销',
				width: '119px'
			},
			{
				field: 'operator',
				align: 'center',
				title: '操作',
				width: '119px',
				formatter: function(value, row, index) {
					return '<a href=\"javascript:;\"  onclick=\"myDialog()\">查看详情</a>';
				}
			}

		]
	],
	fitColumns: true,
	striped: true,
	pagination: true,
	rownumbers: true,
	height: 310,
	width: $( window ).width() - 15,
	selectOnCheck: true,
	resizable: false,
	loadMsg: '正在加载中...',
	pageSize: 10,
	pageList: [10, 20, 50, 100, 150],
	singleSelect: true

});

function tablerefresh(_pagenumber, _pagesize) {
	$.ajax({
		url: "../../AjaxHandler/AjaxService.ashx",
		data: {
			method: 'CheLiangFenXi',
			pagenumber: _pagenumber,
			pagesize: _pagesize,
			CNUMBERPLATE: $('._CNUMBERPLATE').val(),
			//CFUELTYPE: $( '.CFUELTYPE' ).val()
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

tablerefresh(1, 50);

$('.page-search').click(function() {
	tablerefresh(1, 50);
});

function myDialog() {
	$('#win').window('open');
}



$('.page-table').datagrid('getPager').pagination({
	onSelectPage: function(pageNumber, pageSize) {
		tablerefresh(pageNumber, pageSize);
	}
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


/*其他检定*/
$('#tjwqOtherCheck').click(function(){
	$('#OtherCheck').window('open');
})
