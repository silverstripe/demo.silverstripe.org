<?php

use SilverStripe\Core\Config\Config;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HomePage extends Page
{
    private static $db = [
        'RightHeading' => 'Varchar',
        'RightContent' => 'HTMLText',
        'RightCtaLabel' => 'Varchar',
        'RightCtaLink' => 'Varchar',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $db = HomePage::config()->get('db', Config::UNINHERITED);
        foreach ($db as $fieldName => $type) {
            $field = $fields->dataFieldByName($fieldName);
            $fields->removeByName($fieldName);
            $fields->addFieldToTab('Root.RightPanel', $field);
        }
        return $fields;
    }

    public function canEdit($member = null)
    {
        return false;
    }
}
