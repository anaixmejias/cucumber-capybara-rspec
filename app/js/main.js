$(document).ready(function(){
	$('#signIn').on('click', function(){
		var validFields = true;
		$('input').each(function(index, value) {
		  if ($(value).val() === "") validFields = false;
		});

		if (validFields) {
			$('#alertError').hide();
			$('#alertSuccess').show();
		} else {
			$('#alertSuccess').hide();
			$('#alertError').show();  
		}
		return false;
	});
});
