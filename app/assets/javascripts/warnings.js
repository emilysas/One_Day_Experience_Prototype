$(document).ready(function(){

	$('.delete_profile_confirmation').on('click', function() {
		var r = confirm("Are you sure?");
			if (r === true) {
				$('.delete_profile').trigger("click");
			} 
	});
});