$(document).ready(function() {
    $('form[id="userDetailsForm"]').validate({
    rules: {
        fullName: 'required',
        addressLine1: 'required',
        addressLine2: 'required',
        panCardNumber: 'required',
        city: 'required',
        state: 'required',
        postCode:{
            required:true,
            minlength:6,
            digits:true
        },
        country: 'required',
        phoneNumber: {
            required:true,
            minlength:10,
            digits:true
        }
        //user_email: {
        //    required: true,
        //    email: true
        //},
        //psword: {
        //    required: true,
        //    minlength: 8
        //}
    },
    messages: {
        fullName: 'This field is required',
        panCardNumber: 'This field is required',
        addressLine1: 'This field is required',
        addressLine2: 'This field is required',
        city: 'This field is required',
        state: 'This field is required',
        postCode: 'Enter 6 digit valid Postal Code',
        country: 'This field is required',
        phoneNumber: 'Enter 10 digit valid Phone Number'
        //user_email: 'Enter a valid email',
        //psword: {
        //    minlength: 'Password must be at least 8 characters long'
        //}
    },
    submitHandler: function(form) {
        form.submit();
    }
});

    $('form[id="userBankDetailsForm"]').validate({
        rules: {
            bankName: 'required',
            ifscCode: 'required',
            accountNumber:{
                required:true,
                //minlength:6,
                digits:true
            }
        },
        messages: {
            bankName: 'This field is required',
            ifscCode: 'This field is required',
            accountNumber: 'Enter Valid Bank Account Number'

        },
        submitHandler: function(form) {
            form.submit();
        }
    });
});