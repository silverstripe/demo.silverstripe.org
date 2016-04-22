(function($) {
	$(document).ready(function() {

		$('select[name="Language"]').on('change', function() {

			$('input[name="Email"]').val(this.value);

			ga('send', 'event', 'Login', 'language-selector', this.value);

		});
		
	})
})(jQuery);