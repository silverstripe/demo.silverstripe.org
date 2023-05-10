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

        Requirements::themedCSS('reset');
        Requirements::themedCSS('layout');
        Requirements::themedCSS('form');
        Requirements::themedCSS('typography');

        Requirements::css('app/css/demo.css');
        Requirements::css('app/css/moduleSupport.css');
        Requirements::javascript('//code.jquery.com/jquery-3.6.4.min.js');
        Requirements::javascript('app/javascript/googleanalytics.js');
    }

    /**
     * Hide content on the login pages as the warning message is hard coded in
     * the form.
     *
     * @return DBField|false
     */
    public function Content()
    {
        if (Controller::has_curr() && Controller::curr() instanceof Security) {
            return false;
        }
        return $this->data()->dbObject('Content');
    }

    public static function get_template_global_variables()
    {
        return array(
            'Action' => 'nbn',
        );
    }

    public static function nbn()
    {
        return Controller::curr()->getAction();
    }
}
