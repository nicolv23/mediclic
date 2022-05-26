$(document).ready(function() {
	$('.logo_messagerie').click(function() {
		$('.boite_messagerie').toggleClass('active');
	});

	$('.my-conv-form-wrapper').convform({selectInputStyle: 'disable'});
});
