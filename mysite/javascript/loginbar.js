(function($) {
	$(document).ready(function() {

		$('select[name="Language"]').on('change', function() {

			$('input[name="Email"]').val(this.value);

		});

	})
})(jQuery);