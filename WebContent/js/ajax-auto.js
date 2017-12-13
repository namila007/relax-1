
$(document).ready(function() {
    $(function() {
        $("#nic").autocomplete({
            source : function(request, response) {
                $.ajax({
                    url: "ajaxautocomplete.html",
                    type: "Post",
                    data:JSON.stringify({"nic": request.term}),
                    contentType: "application/json",
                    dataType: "json",
                    success : function(data) {
                        response(data.list_NIC);

                        console.log(data);
                        console.log(request.term);
                    }
                });
            }
        });
    });
});
