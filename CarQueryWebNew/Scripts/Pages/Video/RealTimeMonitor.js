$('.tjwqVideoBtn').click(function() {
	$(this).addClass('tjwqVideoActive').siblings().removeClass('tjwqVideoActive');
});

/*$('#tjwqVideoBtn1').click(function(){
	$('.btn1').css('display','block');
	$('.btn2').css('display','none');
	$('.btn3').css('display','none');
})*/
/*四屏*/
$('#tjwqVideoBtn2').click(function() {
	$('.btn1').css('display', 'none');
	$('.btn2').css('display', 'block');
	$('.btn3').css('display', 'none');
});
/*九屏*/
$('#tjwqVideoBtn3').click(function() {
	$('.btn1').css('display', 'none');
	$('.btn2').css('display', 'none');
	$('.btn3').css('display', 'block');
});
/*停止*/
/*$('#tjwqVideoStopBtn').click(function() {
	$('video').pause();
})
*/
/*放大、缩小*/
$('video').dblclick(function() {
	$(this).css({
		width: '84%',
		height: '98%'
	}).siblings('video').css('display', 'none');
});

$('video').click(function() {
	$(this).css({
		width: '',
		height: ''
	}).siblings('video').css('display', 'block');
})