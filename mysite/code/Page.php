<?php

class Page extends SiteTree {
}

class Page_Controller extends ContentController implements TemplateGlobalProvider  {

	public function init() {
		parent::init();

		Requirements::themedCSS('reset');
		Requirements::themedCSS('layout');
		Requirements::themedCSS('form');
		Requirements::themedCSS('typography');

		Requirements::javascript(THIRDPARTY_DIR . '/jquery/jquery.js');

		Requirements::css('mysite/css/demo.css');
		Requirements::css('mysite/css/moduleSupport.css');

		Requirements::customScript(<<<JS
(function(i,s,o,g,r,a,m){ i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ 
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-84547-17', 'auto', { 'allowLinker': true });
ga('require', 'linker');
ga('linker:autoLink', [
	'www.silverstripe.com',
	'www.silverstripe.org',
	'addons.silverstripe.org',
	'api.silverstripe.org',
	'docs.silverstripe.org',
	'userhelp.silverstripe.org',
	'demo.silverstripe.org'
]);
ga('send', 'pageview');
JS
		);
	}

	/**
	 * Hide content on the login pages as the warning message is hard coded in
	 * the form.
	 */
	public function Content() {
		if(Controller::has_curr() && Controller::curr() instanceof Security) {
			return false;
		}
		return $this->dbObject('Content');
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
