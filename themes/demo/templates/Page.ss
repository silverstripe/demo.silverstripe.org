<!DOCTYPE html>
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
    <head>
        <% base_tag %>
    	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        <meta charset="utf-8">
        <meta name="author" content="Jared Lee">
        <meta name="description" content="SilverStripe Demo">
        <meta name="viewport" content="width=device-width">
        $MetaTags(false)

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:600,300,700' rel='stylesheet' type='text/css'>
        <script src="js/build/build.js"></script>
    </head>



    <body>
        <% include Navigation %>



        <section class="page-container">
            <!-- Hero banner start -->
            <header class="hero">
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="five columns">
                                <div class="hero-cta">
                                    <h1>Welcome to the SilverStripe demo</h1>
                                    <h3>Get started and login to the CMS</h3>
                                    <a class="button button-primary" href="#">Enter the cms</a>
                                </div>
                            </div>
                            <div class="seven columns">
                                <div class="">
                                    <h1>Image here</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </header>
            <!-- Hero banner end -->



            <section class="compact-cta">
                <div class="container">
                    <h3>Download the CMS</h3>
                    <a class="button button-primary" href="#">Download</a>
                  </div>
                </div>
            </section>



            <section class="grid grey">
                <div class="row">
                    <div class="twelve columns">
                        <h3>See the industries using SilverStripe</h3>
                        <ul class="grid-block">
                              <li class="grid-3"><a href="#">Corporate</a></li>
                              <li class="grid-3"><a href="#">Government</a></li>
                              <li class="grid-3"><a href="#">Education</a></li>
                              <li class="grid-3"><a href="#">Creative</a></li>
                              <li class="grid-3"><a href="#">Non-profit</a></li>
                              <li class="grid-3"><a href="#">Technology</a></li>
                        </ul>
                    </div>
                </div>
            </section>


            <!-- SilverStripe Products starts -->
            <section>
                <div class="row">
                    <div class="col-md-12">
                        <h3>SilverStripe Products</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <h4>SilverStripe CMS</h4>
                        </div>
                        <div class="col-md-4">
                            <h4>SilverStripe Framework</h4>
                        </div>
                        <div class="col-md-4">
                            <h4>SilverStripe Platform</h4>
                        </div>
                    </div>
                </div>
                <a href="#">button</a>
            </section>
            <!-- SilverStripe Product ends -->



            <section>
                <div class="row">
                    <div class="col-md-12">

                    </div>
                    <div class="col-md-6">
                        <a href="#">Developer directories</a>
                    </div>
                    <div class="col-md-6">
                        <a href="#">Need a recommendation?</a>
                    </div>
                </div>
            </section>
        </section>




<% include Footer %>




        <!-- Mobile navigation panel script -->
        <script src="js/classie.js"></script>
		<script>
			var pancakes = document.getElementById( 'buttonShowMenu' ),
                menu = document.getElementById( 'menuSlideOut' ),
				body = document.body;

			pancakes.onclick = function() {
				classie.toggle( body, 'hide-left' );
				classie.toggle( menu, 'show-right' );
			};

		</script>
        <!-- Mobile navigation panel script ends -->
    </body>
</html>
