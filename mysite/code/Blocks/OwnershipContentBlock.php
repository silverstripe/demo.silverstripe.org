<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;

/**
 * This demo content block is versioned and can be added to any pages, it's "owned" so will be published with its Page
 */
class OwnershipContentBlock extends DataObject
{
    private static $db = [
        'Content' => 'HTMLText'
    ];

    private static $has_one = [
        'Page' => 'Page'
    ];

    private static $extensions = [
        Versioned::class
    ];

    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function (FieldList $fields) {
            $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content'));
        });
        return parent::getCMSFields();
    }
}
