$('.page-table').datagrid({
	columns: [
		[{
				field: '',
				title: '',
				checkbox: true
			},
			{
				field: 'operator',
				align: 'center',
				title: '操作',
				width: 100,
				formatter: function(value, row, index) {
					return '<a href=\"javascript:;\">打印</a><a href=\"javascript:;\"  onclick=\"myDialog()\">查看详情</a>';
				}
			},
			{
				field: 'C1',
				title: '车牌号码',
				width: 100,
				align: 'center'
			},

			{
				field: 'C2',
				title: '车架号/VIN',
				width: 100,
				align: 'center'
			},
			{
				field: 'C3',
				align: 'center',
				title: '车牌颜色',
				width: 100
			},
			{
				field: 'C4',
				align: 'center',
				title: '车辆种类',
				width: 100
			},
			{
				field: 'C5',
				align: 'center',
				title: '登记日期',
				width: 100
			},
			{
				field: 'C7',
				align: 'center',
				title: '车型号',
				width: 100
			},
			{
				field: 'C8',
				align: 'center',
				title: '尾气检测日期',
				width: 100
			},

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
	loadMsg: '正在加载中...',
	pageSize: 10,
	pageList: [10, 20, 50, 100, 150],
	singleSelect: true

});

function tablerefresh() {
	$.ajax({
		url: "../../AjaxHandler/Temp.ashx",
		data: {
			method: 'GetTable4'
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

tablerefresh(1,10);

$('.page-search').click(function() {
	tablerefresh(1,10);
});

function myDialog() {

	$('#win').window('open');

}