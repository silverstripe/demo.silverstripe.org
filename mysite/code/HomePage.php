<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HomePage extends Page
{
    public function canEdit($member = null)
    {
        return false;
    }

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
