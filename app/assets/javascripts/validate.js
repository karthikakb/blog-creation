$(document).on('turbolinks:load', function() {
	console.log("*******************")
$("#new_user").validate({
	rules: {
        "user[password]": {
            minlength: 5
        },
        "user[password_confirmation]": {
            minlength: 5,
            equalTo: "#user_password"
        }
    }
});
});

