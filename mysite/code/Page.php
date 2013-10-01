<?php
class Page extends SiteTree {

	private static $has_one = array(
		"MyWidgetArea" => "WidgetArea",
	);
		
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Widgets", new WidgetAreaEditor("MyWidgetArea"));

		return $fields;
	}

}
class Page_Controller extends ContentController {

	public function init() {
		parent::init();

		Requirements::css("mysite/css/demo.css");
		Requirements::css("mysite/css/moduleSupport.css");
			
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

}
