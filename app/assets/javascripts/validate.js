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
    },
    messages:
    {
        "user[first_name]":"Please enter your first name",
        "user[last_name]":"Please enter your last name",
        "user[email]":"Please enter the valid email address",
         "user[password]": {
            required:"Please provide password",
            minlength:"your password must have 5 character long"
         },
          "user[password_confirmation]":{
            required:"Please provide password",
            minlength:"your password must have 5 character long"
          }


    }
});
});

