
$(document).ready(function() {


    $(function() {
        $("#nic").autocomplete({
            minLength:5,
            source : function(request, response) {
                $.ajax({
                    url: "/ajaxautocomplete.html",
                    type: "Post",
                    data:JSON.stringify({"nic": request.term}),
                    contentType: "application/json",
                    dataType: "json",
                    success : function(data) {
                        response($.map(data.patient, function (patient) {
                            return{
                                label: patient.nic,
                                id: patient.id,
                            }
                        }))
                    }
                });
            },

            select: function( event, ui ) {
                $.confirm({
                    icon: 'fa fa-warning',
                    title: 'Entry Found',
                    content: 'This NIC ('+ ui.item.label+') was found.Go to Patient page?',
                    lazyOpen:false,
                    theme: 'bootstrap',
                    // onContentReady: function(){this.lazyOpen=a},
                    buttons: {
                        confirm: function () {
                            location.href=("/patient/view.html?id="+ui.item.id)

                        },
                        cancel: function () {

                        },
                    }
                })
                //a.open();
                return true
            }
        });
        /**
         * .data("ui-autocomplete")._renderItem = function(ul, item){
            var html = '<b>' + item.nic + '</b>';
            return $("<li></li>")
                .data("item.autocomplete", item)
                .append(html)
                .appendTo(ul);
        };
         */
    });







});

