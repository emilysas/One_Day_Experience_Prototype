var expandCircle = function () {

	$('#test-circle2').css({ 
		width:100, 
		height:100, 
		opacity:1
	}).animate({
		width:150, 
		height:150, 
		opacity:0 
	},2000,function(){expandCircle();});

};

$('#test-circle2').click(function() {
	expandCircle();
});
