/// <reference path="jquery-ui.min.js" />
/// <reference path="jquery-2.2.0.min.js" />

$(document).ready(function () {

    $('[id$=spanwelcome]').mouseenter(function () {
        $('[id$=divlogout]').css("display", "block");
    });

    $('[id$=divlogout]').mouseleave(function () {
        $('[id$=divlogout]').css("display", "none");
    });
    $('[id$=spanwelcome]').mouseup(function () {
        $('[id$=divlogout]').css("display", "none");
    });

    $('[id$=txtusername]').focus();


            



});
