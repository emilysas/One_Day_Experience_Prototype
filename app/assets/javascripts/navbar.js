var menuState = 'hidden';

$(document).ready(function() {

	$('.menu-pop').hide();
	$('.links').hide();

	var viewHeight = document.getElementById('sidebar').offsetWidth;
	var iconHeight = viewHeight * 0.6
	

	// $('.link-height').css('height', iconHeight)
	// $('.jsicons').css('height', iconHeight)
	
	
	var previousWidth

	
		$('#sidebar').on("mouseenter", function() {
			
			previousWidth = viewHeight
			if(menuState === 'hidden'){

				previousWidth = viewHeight;

				$(this).css({
			    width: viewHeight,
			    }).animate({
			      width: 200
			    }); 
			  };

		    $('.links').css({
	        display: 'inline-block',
	        opacity:0
	      }).animate({
	        opacity: 1
	      }, 300);

	    console.log(menuState)
	    menuState = 'visible';
		});
	

	
		$('#sidebar').on("mouseleave", function() {
			if(menuState === 'visible'){
				$('.links').fadeOut();
				var startWidth = document.getElementById('sidebar').offsetWidth;
				console.log(startWidth);
				$(this).css({
		      width: startWidth,
		    }).animate({
		      width: previousWidth
		    }); 
		    
		    menuState = 'hidden';
		    console.log(menuState)
		  };
		});


	// if(menuState === 'hidden') {
	// 	$('#sidebar').on("mouseover", function() {
			
	// 		$('.menu-pop').fadeIn();
	// 		menuState = 'visible';
	// 		$('.menu-pop').on("mouseover", function() {
	// 			menuState = 'visible'
				
	// 		});
	// 	});
	// };

	// $('.menu-pop').on("mouseout", function() {
	// 	$('.menu-pop').fadeOut();
	// });
	
});
// var showState = 'hidden'
// var toggleTab = function (trigger) {
	

// 	$(trigger).on("mouseover", function () {
// 		$('.menu-pop').css({
			
// 		});
// 	});

// };

// (function () {}, 3000)