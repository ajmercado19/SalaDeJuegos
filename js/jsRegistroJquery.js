$(document).ready(function(){
    $("#mensaje").hide();
    $("#frmRegistro").validate({
    	event: "blur",
        rules: 
        {
            'nombre': "required",
            'apellido': "required",
            'legajo': {required: true,digits: true},
            'dire': "required",
            'email': {required: true,  email: true},
            'fecha': {required: true,  date: true},
            'pass': "required",
            'pass2': {equalTo: "#pass"}
            
        },
    	messages: 
        {
            'nombre': "<span class='error1'>Ingresa tu nombre</span>",
            'apellido': "<span class='error1'>Ingresa tu apellido</span>",
            'legajo': {required: "<span class='error1'>Ingresa tu legajo</span>", digits:  "<span class='error1'>Ingresa solo numeros</span>"},
            'dire': "<span class='error1'>Ingresa tu dirección</span>",
            'email':{required: "<span class='error1'>Ingresa tu email</span>", email: "<span class='error1'>Por favor, indica una dirección de email válida</span>"},
            'fecha': "<span class='error1'>No seas coqueto/a, ingresa tu fecha de nacimiento</span>",
            'pass': "<span class='error1'>Ingresa tu password supersecreta</span>",
            'pass2': "<span class='error1'>Ingresa tu password correctamente otra vez</span>"
            
        },
    	debug: true,
        errorElement: "label",
    	submitHandler: 
        function(form){
            var elUsuario=$("#email").val();
        	var laClave=$("#pass").val();
        	var laDire = $("#dire").val();
        	var elNombre = $("#nombre").val();
        	var elApellido = $("#apellido").val();
        	var elLegajo = $("#legajo").val();
        	var laFecha = $("#fecha").val();
        	
    		var miAjax = $.ajax({
    			type: "POST",
    			url:"signUp.php",
    			//contentType: "application/x-www-form-urlencoded",
    			//processData: true,
    			data:
    			{
    			    usuario:elUsuario,
        			clave:laClave,
        			nombre: elNombre,
        			apellido : elApellido,
        			legajo: elLegajo,
        			dire: laDire,
        			fecha: laFecha
    			},
    		});
    		miAjax.done(function(msg){
    		        $("#mensaje").html("<strong>Gracias por registrarte, bienvenido!</strong>");
    		        $("#mensaje").show();
					document.getElementById("nombre").value="";
    				document.getElementById("apellido").value="";
    				document.getElementById("legajo").value="";
    				document.getElementById("dire").value="";
    				document.getElementById("email").value="";
    				document.getElementById("fecha").value="";
    				document.getElementById("pass").value="";
    				document.getElementById("pass2").value="";
    				setTimeout(function() {
    				    $('#mensaje').fadeOut('fast');
    				    window.location.href="menu.php";
    				    
    				}, 1000);
    			});
    	}
    });
});