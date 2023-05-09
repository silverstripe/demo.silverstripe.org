<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]>
<html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]>
<html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]>
<html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <% require themedCSS('reset') %>
    <% require themedCSS('typography') %>
    <% require themedCSS('form') %>
    <% require themedCSS('layout') %>
    <link rel="shortcut icon" href="themes/simple/images/favicon.ico"/>
</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>"
    <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
    <% include Header %>
    <div class="main" role="main">
        <div class="inner typography line">
            <div class="content-container unit size3of4 lastUnit">
                <article>
                    <h1>$Title</h1>
                    <% if not $CurrentMember %>
                        <div class="content">Please login using email "admin" and password: "password"</div>
                    <% end_if %>
                </article>
                $Form
                <div>
                    <p>You can also try the CMS interface in a different language with the following logins:</p>
                    <ul>
                        <li>Arabic (Username: "arabic", password: "password")</li>
                        <li>Chinese (Username: "chinese", password: "password")</li>
                        <li>French (Username: "french", password: "password")</li>
                        <li>German (Username: "german", password: "password")</li>
                        <li>Japanese (Username: "japanese", password: "password")</li>
                        <li>Russian (Username: "russian", password: "password")</li>
                        <li>Spanish (Username: "spanish", password: "password")</li>
                        <li>Te Reo/Māori (Username: "tereo", password: "password")</li>
                        <li>Arabic (Username: "arabic", password: "password")</li>
                        <li>Russian (Username: "russian", password: "password")</li>
                        <li>Japanese (Username: "japanese", password: "password")</li>
                    </ul>
                    <p>More languages are available in the <a href="admin/myprofile">profile settings</a>.</p>
                </div>
            </div>
        </div>
    </div>
    <% include Footer %>

    <% require javascript('//code.jquery.com/jquery-1.7.2.min.js') %>
    <% require themedJavascript('script') %>

</body>
</html>
