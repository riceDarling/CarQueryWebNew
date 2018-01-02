$('.page-table').datagrid({
	columns: [
		[{
				field: '',
				title: '',
				checkbox: true
			},
			{
				field: 'CNUMBERPLATE',
				title: '车牌号码',
				width: 100,
				align: 'center'
			},
			{
				field: 'CPLATETYPE',
				title: '车架号/VIN',
				width: 100,
				align: 'center',
				formatter: function(value, row, index) {
					return value == '0' ? '蓝牌' : value == '1' ? "黄牌" : value == '2' ? "黑牌" : value == '3' ? "白牌" : "无";
				}
			},
			{
				field: 'CVIN',
				align: 'center',
				title: '车牌颜色',
				width: 100
			},
			{
				field: 'DREGISTERSS',
				align: 'center',
				title: '车辆种类',
				width: 100
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '登记日期',
				width: 100
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '是否允许发标',
				width: 100
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '车型号',
				width: 100
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '尾气检查日期',
				width: 100
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '操作',
				width: 100
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
	resizable: true,
	loadMsg: '...加载中',
	pageSize: 50,
	pageList: [20, 50, 100, 150],
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

$('.page-table').datagrid('getPager').pagination({
	onSelectPage: function(pageNumber, pageSize) {
		tablerefresh(pageNumber, pageSize);
	}
});