var getProfileInfo = function (pageNumber, objectNumber) {

  $.get("/profiles.json?page="+pageNumber, function( data ) {    
    console.log(data);
    if (data.length <= 0) console.log("End of line, last action ");

    // display basic info
    $('#buddy-name').html(data[objectNumber].name);
    $('#buddy-company').html(data[objectNumber].company);
    $('#buddy-info').html(data[objectNumber].info);

    // display image
    $('#profile-pic').attr("src", data[objectNumber].image_url);
    $("#field-img").attr("src", "images/"+data[objectNumber].sector_id+".jpg");
    $("#photo-field-link").attr("href","/profiles/"+data[objectNumber].id);
    
  }, "json");
  
};
// This document is for the loading of profile info on the index page
$(document).ready(function(){  
  var lastAction="right";
  var pageNumber = 1;
  var objectNumber = 0;
  getProfileInfo(pageNumber, objectNumber);
  
  $("#right-circle").on('click', function(){
    
    // get to next elem, or first elem on next page
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
    if (pageNumber>0) {
      getProfileInfo(pageNumber, objectNumber);
    } else {
      objectNumber=0;
      pageNumber=1;
    }
  });
});
