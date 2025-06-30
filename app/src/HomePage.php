<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HomePage extends Page
{
    private static $db = [
        'RightContent' => 'HTMLText'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $field = HTMLEditorField::create('RightContent', 'Right Content');
        $fields->addFieldToTab('Root.RightContent', $field);
        return $fields;
    }

    // public function canEdit($member = null)
    // {
    //     return false;
    // }
}
