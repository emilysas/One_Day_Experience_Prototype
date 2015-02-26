$(document).ready(function(){

  $.get( "http://localhost:3000//api/profiles.json?page=1", function( data ) {
    // TODO: display this info properly
    $( ".result" )
    .append( "<b>Name:</b> " + data[1].name )
    .append( "<br><b>Company:</b> " + data[1].company )
    .append( "<br><b>Info:</b> " + data[1].info );
    
    var src = $("#tokyo").attr("src").replace("/images/tokyo-city.jpg", data[1].image_url);
    $("#tokyo").attr("src", src);
    
  }, "json");
    
})