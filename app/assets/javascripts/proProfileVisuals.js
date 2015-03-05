$(document).ready(function(){
	if ($("#darkPage").length){
    $(document).ready(function(){
    	console.log('ready');
    	$('#sidebar').css('background-color', '#303030');
    	$('.links').css('color', '#E4E4E4');
    });
	}

	$('#jsLocationButton').click(function(){
		$('#photo-field-link').css('display','none')
		$('#google_map').css('visibility','visible')
	});

	var sectorImageWidth = $('#profile-image--sector').css('width')
	
	$('#profile-image--sector').css('height',sectorImageWidth)
	$('#profile-text--individual').css('height',sectorImageWidth)
	console.log(width)

});