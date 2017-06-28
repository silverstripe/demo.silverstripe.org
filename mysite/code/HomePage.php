<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HomePage extends Page
{
    private static $db = array(
        'RightContent' => "HTMLText"
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab("Root.RightContent", new HTMLEditorField("RightContent", "Right Content"));

        return $fields;
    }
}
