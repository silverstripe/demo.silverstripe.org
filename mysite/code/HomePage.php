<?php
class HomePage extends Page {

	static $db = array(
		'RightContent' => "HTMLText"
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab("Root.RightContent", new HTMLEditorField("RightContent", "Right Content"));
		
		return $fields;
	}

}
class HomePage_Controller extends Page_Controller {

}