<?php

use SilverStripe\View\Requirements;
use SilverStripe\Control\Controller;
use SilverStripe\Security\Security;
use SilverStripe\CMS\Controllers\ContentController;
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

        Requirements::javascript(ADMIN_THIRDPARTY_DIR . '/jquery/jquery.js');

        Requirements::css('mysite/css/demo.css');
        Requirements::css('mysite/css/moduleSupport.css');
        Requirements::javascript('mysite/javascript/demobar.js');
        Requirements::javascript('mysite/javascript/googleanalytics.js');
    }

    /**
     * Hide content on the login pages as the warning message is hard coded in
     * the form.
     */
    public function Content()
    {
        if (Controller::has_curr() && Controller::curr() instanceof Security) {
            return false;
        }
        return $this->dbObject('Content');
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

    public function LoginForm()
    {
        $s = new Security();
        $form = $s->LoginForm();
        $form->Actions()->removeByName('forgotPassword');
        return $form;
    }
}
