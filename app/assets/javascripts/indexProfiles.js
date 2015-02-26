$(document).ready(function(){
  // TODO: refactor this like crazy loco - mainly not doing a get for every single obj
  var pageNumber = 1;
  var objectNumber = 0;
  getProfileInfo(pageNumber, objectNumber);
  // yes is the id of the right circle
  // TODO: change all id's to match purpose
  $("#yes").on('click', function(){
    
    // get to next elem, or first elem on next page
    objectNumber++;
    if (objectNumber>=3) {
      objectNumber=1;
      pageNumber++;
    }
    getProfileInfo(pageNumber, objectNumber);
  });

})

var getProfileInfo = function (pageNumber, objectNumber) {

  $.get( "http://localhost:3000//api/profiles.json?page="+pageNumber, function( data ) {
    
    // display basic info
    $('#buddy-name').html(data[objectNumber].name);
    $('#buddy-company').html(data[objectNumber].company);
    $('#buddy-info').html(data[objectNumber].info);
    console.log("Page = " + pageNumber + " Object = " + objectNumber);

    // display image
    $("#tokyo").attr("src", data[objectNumber].image_url);
    
  }, "json");
  
}