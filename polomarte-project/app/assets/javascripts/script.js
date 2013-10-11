$(document).ready(function () {
    $(".project").on("click", function () {
        window.location = $(this).attr("url");
    });
});