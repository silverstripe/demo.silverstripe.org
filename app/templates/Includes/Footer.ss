<footer class="footer">
    <div class="container container--footer">
        <nav aria-label="Footer">
            <ul class="footer-menu">
                <li class="footer-menu__item footer-menu__item--copyright">
                    &copy; $CurrentDatetime.Format("y") $SiteConfig.Title
                </li>
                <% loop $Menu(1) %>
                    <li class="footer-menu__item">
                        <a href="$Link" class="footer-menu__link">$MenuTitle</a>
                    </li>
                <% end_loop %>
                <li class="footer-menu__item">
                    <a href="http://www.silverstripe.org/download/" class="footer-menu__link">Download</a>
                </li>
                <li class="footer-menu__item">
                    <a href="/admin" class="footer-menu__link">Log in</a>
                </li>
            </ul>
        </nav>
        <a href="https://www.silverstripe.org/" class="footer__logo" target="_blank" rel="noopener noreferrer" aria-label="Silverstripe CMS">
            <img src="$resourceURL('themes/startup-theme/images/logo--silverstripe-cms.svg')" width="176" height="21" alt="">
        </a>
    </div>
</footer>
