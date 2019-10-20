$(document).ready(function(){
  
    $("#Boton").on("click",function(){
       
        $.post('Login', {
            user: $("#user").val(),
            pass: $("#pass").val()
        }, function (responseText) {
            

        });
        
       
    });
  
});


