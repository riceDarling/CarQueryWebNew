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
				title: '车牌号码',
				width: '119px',
				align: 'center'
			},
			{
				field: 'CPLATETYPE',
				title: '车牌颜色',
				width: '119px',
				align: 'center'
			},
			{
				field: 'CVIN',
				align: 'center',
				title: '车架号/VIN',
				width: '119px'
			},
			{
				field: 'DREGISTERSS',
				align: 'center',
				title: '初登日期',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '厂牌型号',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '最大质量(kg)',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '基准质量(kg)',
				width: '119px'
			},
			{
				field: 'NVEHICLEMODELID',
				align: 'center',
				title: '最近修改的检测场',
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
	pageList: [10,20, 50, 100, 150],
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

tablerefresh(1, 10);

$('.page-search').click(function() {
	tablerefresh(1, 10);
});

$('.page-table').datagrid('getPager').pagination({
	onSelectPage: function(pageNumber, pageSize) {
		tablerefresh(pageNumber, pageSize);
	}
});


//车辆查询详细的面板
$( '#cheliangchaxunPanel' ).css({'margin-top' : $( window ).height()/2 - 275})
$( '.panel-removebtn' ).click(function (){
    $( this ).parent().parent().parent().remove();
});


//路检查询
$( '.lujianchaxun-table' ).datagrid({
    columns: [
        [
            {
                field: '',
                title: '',
                checkbox: true
            },
            {
                field: '1',
                title: '是否需要复议',
                width: '119px',
                align: 'center'
            },
            {
                field: '100',
                title: '车牌号',
                width: '119px',
                align: 'center'
            },
            {
                field: '2',
                align: 'center',
                title: '车牌类型',
                width: '119px'
            },
            {
                field: '3',
                align: 'center',
                title: '路检类型',
                width: '119px'
            },
            {
                field: '4',
                align: 'center',
                title: '违规时间',
                width: '119px'
            },
            {
                field: '5',
                align: 'center',
                title: '是否解除',
                width: '119px'
            },
            {
                field: '10',
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
    width: 855,
    height: 340,
    selectOnCheck: true,
    resizable: false,
    loadMsg: '正在加载中...',
    pageSize: 10,
    pageList: [10,20, 50, 100, 150],
    singleSelect: true

});

//检测信息
$( '.jiancexinxi-table' ).datagrid({
    columns: [
        [
            {
                field: '',
                title: '',
                checkbox: true
            },
            {
                field: '1',
                title: '车牌号码',
                width: '119px',
                align: 'center'
            },
            {
                field: '100',
                title: '车牌颜色',
                width: '119px',
                align: 'center',
                formatter: function(value, row, index) {
                    return value == '0' ? '蓝牌' : value == '1' ? "黄牌" : value == '2' ? "黑牌" : value == '3' ? "白牌" : "无";
                }
            },
            {
                field: '2',
                align: 'center',
                title: '车架号/VIN',
                width: '119px'
            },
            {
                field: '3',
                align: 'center',
                title: '车辆种类',
                width: '119px'
            },
            {
                field: '4',
                align: 'center',
                title: '初登日期',
                width: '119px'
            },
            {
                field: '5',
                align: 'center',
                title: '尾气检测日期',
                width: '119px'
            },
            {
                field: '6',
                align: 'center',
                title: '尾气检测是否合格',
                width: '119px'
            },
            {
                field: '7',
                align: 'center',
                title: '厂牌型号',
                width: '119px'
            },
            {
                field: '8',
                align: 'center',
                title: '检测方法',
                width: '119px'
            },
            {
                field: '9',
                align: 'center',
                title: '标志类型',
                width: '119px'
            },
            {
                field: '10',
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
    width: 855,
    height: 340,
    selectOnCheck: true,
    resizable: false,
    loadMsg: '正在加载中...',
    pageSize: 10,
    pageList: [10,20, 50, 100, 150],
    singleSelect: true

});

function myDialog() {

	

}