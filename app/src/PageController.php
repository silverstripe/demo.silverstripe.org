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
        // these were from simple theme
        // Requirements::themedCSS('reset');
        // Requirements::themedCSS('layout');
        // Requirements::themedCSS('form');
        // Requirements::themedCSS('typography');

        // todo

        // Requirements::themedCSS('startup');
        // Requirements::css('app/css/demo');
        // Requirements::css('app/css/moduleSupport');
        // Requirements::javascript('//code.jquery.com/jquery-3.6.4.min.js');
        Requirements::javascript('app/javascript/googleanalytics.js');
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
