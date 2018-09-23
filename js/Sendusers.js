$(function() {
    //alert('Here');
    $('#Sendd').click(function() {
        var Na = $('#Name').val();
        var Na1 = $('#Name1').val();
        var LaNa = $('#LaName').val();
        var LaNa1 = $('#LaName1').val();
        var Usr = $('#Usuario').val();
        var Mil = $('#Correo').val();
        var Ae = $('#Age').val();
        var Gs = $('#Gender').val();

        //console.log(Na + " " + Na1 + " " + LaNa + " " + LaNa1 + " " + Usr + " " + Mil + " " + Ae + " " + Gs);
        var Dataa = 'Name=' + Na + '&Name1=' + Na1 + '&LaName=' + LaNa + '&LaName1=' + LaNa1 + '&Usuario=' + Usr + '&Correo=' + Mil + '&Age=' + Ae + '&Gender=' + Gs;
        console.log(Dataa);
        var Url = 'php/gett.php';

        $.ajax({
            type: 'post',
            url: Url,
            data: Dataa,
            beforeSend: function() {
                console.log('Antes de procesar');
            },
            success: function(response) {
                if (response == 1) {
                  //  $('#Res').html("por favor diligencia el formulario!");
                   alertify.warning('Por favor diligencia todo el formulario!');
                }
                if (response == 2) {
                    //$('#Res').html("El correo ya se encuentra registrado!");
                    alertify.error('El correo ya se encuentra registrado!');
                }
                if (response == 3) {
                    //$('#Res').html("registrado!");
                    alertify.success('Registrado!'); 
                }
            }

        });

    });
});
