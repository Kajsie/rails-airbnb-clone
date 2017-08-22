$('.datepicker').datepicker({
   onSelect: function() {
        var dateObject = $(this).datepicker('getDate');
    }
});

