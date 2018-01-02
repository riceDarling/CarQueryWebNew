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
				width: '120px',
				align: 'center'
			},
			{
				field: 'CPLATETYPE',
				title: '车牌类型',
				width: '120px',
				align: 'center',
				formatter: function(value, row, index) {
					return value == '0' ? '蓝牌' : value == '1' ? "黄牌" : value == '2' ? "黑牌" : value == '3' ? "白牌" : "无";
				}
			},
			{
				field: 'CVIN',
				align: 'center',
				title: '车辆种类',
				width: '120px'
			},
			{
				field: 'DREGISTERSS',
				align: 'center',
				title: '初登日期',
				width: '120px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '燃料种类',
				width: '120px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '尾气检测日期',
				width: '120px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '尾气检测结果',
				width: '120px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '厂牌型号',
				width: '120px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '检测类型',
				width: '120px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '标志类型',
				width: '120px'
			},
			{
				field: 'operator',
				align: 'center',
				title: '操作',
				width: '120px',
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
	width: $(window).width() - 15,
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

$('.page-table').datagrid('getPager').pagination({
	onSelectPage: function(pageNumber, pageSize) {
		tablerefresh(pageNumber, pageSize);
	}
});

function myDialog() {

	$('#win').window('open');

}

/*车架号弹窗*/
$('#tjwqFrameNub').click(function(){
	$('#FrameNub').window('open');
})


/*检测场弹窗*/
$('#tjwqCheckSite').click(function(){
	$('#CheckSite').window('open');
})


/*检测线弹窗*/
$('#tjwqCheckLine').click(function(){
	$('#check3').window('open');
})


/*查看*/
$('#checkDetails').click(function () {
    $('#check').window('open');
})

$('#checkLine').click(function () {
    $('#check3').window('open');
})
