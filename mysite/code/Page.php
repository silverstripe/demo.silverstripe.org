<?php
class Page extends SiteTree {
}

class Page_Controller extends ContentController implements TemplateGlobalProvider  {

	function init() {
		parent::init();

		Requirements::themedCSS('reset');
		Requirements::themedCSS('layout');
		Requirements::themedCSS('form');
		Requirements::themedCSS('typography');

		Requirements::javascript(THIRDPARTY_DIR . '/jquery/jquery.js');

		Requirements::css('mysite/css/demo.css');
		Requirements::css('mysite/css/moduleSupport.css');

		Requirements::customScript(<<<JS
var _gaq = _gaq || [];

_gaq.push(['_setAccount', 'UA-84547-11']);
_gaq.push(['_setDomainName', 'none']);
_gaq.push(['_setAllowLinker', true]);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
JS
		);
	}

	/**
	 * Hide content on the login pages as the warning message is hard coded in
	 * the form.
	 */
	function Content() {
		return (Controller::curr() != "Security") ? $this->dbObject('Content') : false;
	}

	public static function get_template_global_variables() {
		return array(
			'Action' => 'nbn',
		);
	}

	public static function nbn() {
		return Controller::curr()->getAction();
	}

}