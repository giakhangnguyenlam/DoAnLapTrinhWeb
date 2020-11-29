$(document).ready(function () {
    $(".qtyplus").click(function (e) {
        e.preventDefault();
        var currentVal = parseInt(
          $('input[name="quantity"]').val()
        );
        if (!isNaN(currentVal)) {
          $('input[name="quantity"]').val(currentVal + 1);
        } else {
          $('input[name="quantity"]').val(1);
        }
      });

    $(".qtyminus").click(function (e) {
        e.preventDefault();
        var currentVal = parseInt(
          $('input[name="quantity"]').val()
        );
        if (!isNaN(currentVal) && currentVal > 0) {
          $('input[name="quantity"]').val(currentVal - 1);
        } else {
          $('input[name="quantity"]').val(1);
        }
      });

    
});