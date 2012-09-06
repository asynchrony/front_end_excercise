
// JS for Create Profile page.

$(function() {
	$('.gender label').click(function() {
		console.log('test');
		$('.gender').children().removeClass('on');
		$(this).addClass('on');
	});
});
