(function($) {
	$(document).ready(function() {
		var container = $("<div id='demobar-container'></div>");
		container.append("<div id='demobar-logo'></div>");

		// adding the buttons
		container.append("<div id='demobar-loginbutton'><a href='admin/'>Log in to try the CMS</a></div>");
		container.append("<div id='demobar-information'><a href='http://silverstripe.org/stable-download/'>Download SilverStripe</a></div>");

		// core bar structure
		var bar = $("<div id='demobar'></div>").append(container);

		$("body").prepend(bar);
		$("html").css('margin-top', '50px');
	})
})(jQuery);