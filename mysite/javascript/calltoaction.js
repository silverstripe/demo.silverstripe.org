(function ($) {
  $(document).ready(function () {
    $('#cms-menu').find('.cms-panel-content').append('' +
      '<div class="demo-ctas">' +
      '<a onClick="ga(\'send\', \'event\', \'demo-cms\', \'cta-click\', \'learn-cms\'); ga(\'send\', \'pageview\', \'/admin/cta-click/\');" href="https://userhelp.silverstripe.org/en/?utm_source=demo-cms&utm_medium=cta-click&utm_content=learn-cms&utm_campaign=demo-improvements" target="_blank" class="cta-btn">Learn the CMS</a>' +
      '<a onClick="ga(\'send\', \'event\', \'demo-cms\', \'cta-click\', \'learn-framework\'); ga(\'send\', \'pageview\', \'/admin/cta-click/\');" href="https://docs.silverstripe.org/en/?utm_source=demo-cms&utm_medium=cta&utm_content=learn-framework&utm_campaign=demo-improvements" target="_blank" class="cta-btn">Learn the Framework</a>' +
      '<a onClick="ga(\'send\', \'event\', \'demo-cms\', \'cta-click\', \'get-in-touch\'); ga(\'send\', \'pageview\', \'/admin/cta-click/\');" href="http://www.silverstripe.org/footer-menu/get-in-touch/?utm_source=demo-cms&utm_medium=cta&utm_content=get-in-contact&utm_campaign=demo-improvements" target="_blank" class="cta-btn">Get in touch</a>' +
      '<h3>Like what you see?</h3>' +
      '</div>');
  })
})(jQuery);
