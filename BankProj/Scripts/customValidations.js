
function validate(customerName, customerAddress) {
    $(document).ready(function () {
    $("#form1").validate({
        rules: {
            //This section we need to place our custom rule for the control. 
            customerName:{  
                required:true  
            },
        },
        messages: {
            //This section we need to place our custom validation message for each control.  
            customerName: {
                required: "First name required !!!"  
            },
        },
    });
    });

    
}

