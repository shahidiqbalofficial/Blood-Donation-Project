/// <reference path="jquery-2.2.0.min.js" />
/// <reference path="jquery-ui.min.js" />

$(document).ready(function () {
    $('[id$=Btn_Register]').click(function () {
        var password = $('[id$=txtpassword]').val();
        var conf_pwd = $('[id$=txt_confirm_password]').val();

        if ($('[id$=txt_first_name]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txt_first_name]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter First Name ");
            $('[id$=txt_first_name]').focus(function () {
                $('[id$=txt_first_name]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=txt_last_name]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txt_last_name]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter Last Name ");
            $('[id$=txt_last_name]').focus(function () {
                $('[id$=txt_last_name]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }

        if ($('[id$=txt_username]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txt_username]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter Username ");
            $('[id$=txt_username]').focus(function () {
                $('[id$=txt_username]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=txtpassword]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txtpassword]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter Password ");
            $('[id$=txtpassword]').focus(function () {
                $('[id$=txtpassword]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=txt_confirm_password]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txt_confirm_password]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter Confirm Password ");
            $('[id$=txt_confirm_password]').focus(function () {
                $('[id$=txt_confirm_password]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=txt_confirm_password]').val() != "") {
            var conf = $('[id$=txt_confirm_password]').val();
            var pwd = $('[id$=txtpassword]').val();
            if (conf == pwd) {

            }
            else {
                $('[id$=error_display]').css("display", "block");
                $('[id$=txt_confirm_password]').css({ "background": "#FFBABA", "color": "#0000cc" });
                $('[id$=lblerror]').html("Password Not Matching.... ");
                return false;
            }
        }

        
        if ($('[id$=ddl_date]').val() == "0") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=ddl_date]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Select Date (DOB) ");
            $('[id$=ddl_date]').focus(function () {
                $('[id$=ddl_date]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=ddl_month]').val() == "0") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=ddl_month]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Select Month (DOB) ");
            $('[id$=ddl_month]').focus(function () {
                $('[id$=ddl_month]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=ddl_year]').val() == "0") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=ddl_year]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Select Year (DOB) ");
            $('[id$=ddl_year]').focus(function () {
                $('[id$=ddl_year]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }

        if ($('[id$=ddl_state]').val() == "0") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=ddl_state]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Choose Your State ");
            $('[id$=ddl_state]').focus(function () {
                $('[id$=ddl_state]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }

        if ($('[id$=ddl_city]').val() == "0") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=ddl_city]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Choose Your City ");
            $('[id$=ddl_city]').focus(function () {
                $('[id$=ddl_city]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }

        if ($('[id$=txt_email_id]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txt_email_id]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter Email Address ");
            $('[id$=txt_email_id]').focus(function () {
                $('[id$=txt_email_id]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
        if ($('[id$=txt_email_id]').val() != "") {
            var email = $('[id$=txt_email_id]').val();
            var filter = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
            if (filter.test(email)) {
            }
            else {
                $('[id$=error_display]').css("display", "block");
                $('[id$=txt_email_id]').css({ "background": "#FFBABA", "color": "#0000cc" });
                $('[id$=lblerror]').html("Please Enter Email-ID Format { abc@xyz.com } ");
                return false;
            }
        }
        if ($('[id$=txt_contact_no]').val() == "") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=txt_contact_no]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Please Enter Contact No : ");
            $('[id$=txt_contact_no]').focus(function () {
                $('[id$=txt_contact_no]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }


        if ($('[id$=ddl_blood_donation]').val() == "0") {
            $('[id$=error_display]').css("display", "block");
            $('[id$=ddl_blood_donation]').css({ "background": "#FFBABA", "color": "#0000cc" });
            $('[id$=lblerror]').html("Choose Your Blood Group ");
            $('[id$=ddl_blood_donation]').focus(function () {
                $('[id$=ddl_blood_donation]').css({ "background": "#FFFFFF", "color": "#000000" });
                $('[id$=error_display]').css("display", "none");
            });
            return false;
        }
    });
});