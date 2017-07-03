<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

/**
 * This page has many blocks that are "owned" by this page, so will be published when the page is published
 */
class OwnershipBlocksPage extends Page
{
    private static $has_many = [
        'Blocks' => 'OwnershipContentBlock'
    ];

    private static $owns = ['Blocks'];

    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function (FieldList $fields) {
            $fields->addFieldToTab(
                'Root.Blocks',
                GridField::create(
                    'Blocks',
                    null,
                    $this->Blocks(),
                    GridFieldConfig_RecordEditor::create()
                )
            );
        });
        return parent::getCMSFields();
    }
}
