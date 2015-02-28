// This document is for the loading of profile info on the index page
$(document).ready(function(){  
  // TODO: refactor this like crazy loco - mainly not doing a get for every single obj
  var pageNumber = 1;
  var objectNumber = 0;
  getProfileInfo(pageNumber, objectNumber);
  
  $("#right-circle").on('click', function(){
  	// $(this).css('border-top-width', 1);
    
    // get to next elem, or first elem on next page
    // TODO: DRY increment decrement functions
    objectNumber++;
    if (objectNumber>=3) {
      objectNumber=0;
      pageNumber++;
    }
    getProfileInfo(pageNumber, objectNumber);
  });

  $("#left-circle").on('click', function(){
    
    objectNumber--;
    if (objectNumber<0) {
      objectNumber=2;
      pageNumber--;
    }


    getProfileInfo(pageNumber, objectNumber);
  });
})

var getProfileInfo = function (pageNumber, objectNumber) {

  var siteUrl = $(location).attr('href');
  $.get("/profiles.json?page="+pageNumber, function( data ) {    
    // display basic info
    $('#buddy-name').html(data[objectNumber].name);
    $('#buddy-company').html(data[objectNumber].company);
    $('#buddy-info').html(data[objectNumber].info);
    // console.log(data[objectNumber].profession_id);

    // display image
    $('#profile-pic').attr("src", data[objectNumber].image_url);
    $("#tokyo").attr("src", data[objectNumber].image_url);
    $("#photo-field-link").attr("href","/profiles/"+data[objectNumber].id);
    
  }, "json");
  
}