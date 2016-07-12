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
        <% require themedCSS('main') %>
        <script src="js/build/build.js"></script>
    </head>



    <body>
        <% include Header %>

        <section class="page-container">
            $Layout
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
