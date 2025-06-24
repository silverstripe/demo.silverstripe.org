<?php

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Control\Controller;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Security\Security;
use SilverStripe\View\Requirements;
use SilverStripe\View\TemplateGlobalProvider;

class PageController extends ContentController implements TemplateGlobalProvider
{
    protected function init()
    {
        parent::init();
        Requirements::themedCSS('demo');
        Requirements::themedJavascript('googleanalytics');
    }

    /**
     * Hide content on the login pages as the warning message is hard coded in
     * the form.
     */
    public function Content(): DBField|false
    {
        if (Controller::curr() instanceof Security) {
            return false;
        }
        /** @var Page $page */
        $page = $this->data();
        return $page->dbObject('Content');
    }

    public static function get_template_global_variables()
    {
        return [
            'Action' => 'nbn',
        ];
    }

    public static function nbn()
    {
        return Controller::curr()->getAction();
    }
}
