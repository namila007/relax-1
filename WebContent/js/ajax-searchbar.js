
$(document).ready(function() {
    var searchkey;
    $('#drop li').on('click', function () {
        searchkey = document.getElementById("search_concept").innerText.trim();

        if (searchkey = "NIC") {

            $(function () {
                $("#searchword").autocomplete({
                    minLength: 4,
                    source: function (request, response) {
                        $.ajax({
                            url: "/ajaxautocomplete.html",
                            type: "Post",
                            data: JSON.stringify({"nic": request.term}),
                            contentType: "application/json",
                            dataType: "json",
                            success: function (data) {
                                response($.map(data.patient, function (patient) {
                                    return {
                                        label: patient.nic,
                                        id: patient.id,
                                    }
                                }))
                            }
                        });
                    },

                    select: function (event, ui) {
                        location.href=("/patient/view.html?id="+ui.item.id)

                        return true
                    }
                });


            });
        }
        ;
    });
});



