
var ajaxFn = function (elm) {
    elm.submit(function() {
        if ($(this).valid()) {
            $.ajax({
                url: this.action,
                type: this.method,
                dataType: 'json',
                data: { format: $(this).val() },
                contentType: "application/json; charset=utf-8",
                success: function (result) {
                    alert("ça marche!");
                    console.log(result);
                },
                failure: function (response) {
                    alert("Please");
                }
            });
        }
        return false;
    });
}



$(document).ready(function () {

    $(".nav-tabs a").click(function () {
        $(this).tab('show');
    });


    ajaxFn($("#firstStep>form"));

    
});