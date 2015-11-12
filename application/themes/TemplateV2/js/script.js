$(document).ready(function(){
    $('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrain_width: false,
      hover: true,
      gutter: 2,
      belowOrigin: true
    });
    $('.materialboxed').materialbox();
    $("#tapa_carga").fadeOut();
    $(".progress").delay(1000).fadeOut();
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });
});


    