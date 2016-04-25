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
		Requirements::javascript('mysite/javascript/loginbar.js');
		Requirements::javascript('mysite/javascript/googleanalytics.js');

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
