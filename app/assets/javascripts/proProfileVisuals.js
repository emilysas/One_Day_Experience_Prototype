	

$(document).ready(function(){
	var sectorImageWidth = $('#profile-image--sector').css('width')
	
	$('#profile-image--sector').css('height',sectorImageWidth);
	$('#profile-text--individual').css('height',sectorImageWidth);
	$('.profiles_map').css('height',sectorImageWidth);
	buildMap;
	$('.profiles_map').css('margin-top','-100%');

	if ($("#darkPage").length){
    $(document).ready(function(){
    	console.log('ready');
    	$('#sidebar').css('background-color', '#303030');
    	$('.links').css('color', '#E4E4E4');
    });
	}
	

var startMargin = $('.profiles_map').css('margin-top')
$('#jsLocationButton').hover(function(){		
		
		console.log(startMargin)
		$('.profiles_map').css({marginTop:startMargin}).animate({marginTop: 0},1000)
	}, function() {	
		$('.profiles_map').css({marginTop: 0}).animate({marginTop: startMargin},1000)
	});

	

});