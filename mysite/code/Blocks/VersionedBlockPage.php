<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

/**
 * This page has many blocks that have versioning enabled
 */
class VersionedBlockPage extends Page
{
    private static $has_many = [
        'Blocks' => 'VersionedContentBlock'
    ];

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
