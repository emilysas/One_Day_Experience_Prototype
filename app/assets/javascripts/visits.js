// For making modifications when the professional changes the visit state on the dropdown lists
$(document).ready(function(){
  $(".status-change").change(function () {
    console.log(this.value);
    // retrieves the id of the dropdown that changed
    console.log($(this).attr("id"));

    // Example ajax request
    // $.ajax({
    //     url: window.location.pathname,
        // type: 'PUT',
    //     contentType: 'application/json',
    //     data: JSON.stringify({ page: { my_data: 1 }),
    //     dataType: 'json'
    // });

    // My Ajax request: to be modified
    // $.ajax({
    //   url: '/visits/'+$(this).attr("id"),
    //   type: 'PUT',
    //   data: "state="+this.value,
    //   success: function(data) {
    //     alert('Put request completed.');
    //   }
    // });

  });
});