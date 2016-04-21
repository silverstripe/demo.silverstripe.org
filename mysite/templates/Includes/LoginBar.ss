    <section class="login-bar">
        <div class="container">
            <div class="row">
                <div class="six columns">
                    <h2>Welcome to the demo</h2>
                </div>
                <div class="six columns">
                    <section class="login-form">
                        <p>Press login to enter CMS</p>
                        <form action="/Security/LoginForm" method="post" enctype="application/x-www-form-urlencoded" class="form-holder">
                            <fieldset>
                                <div class="form-item">
                                    <label for="">Email address</label>
                                    <input type="text" name="Email" placeholder="Email address" value="">
                                </div>
                                <div class="form-item">
                                    <label for="">Password</label>
                                    <input type="password" name="Password" placeholder="Password" value="">
                                </div>
                            </fieldset>
                            <button type="submit" name="button">Login</button>
                            <select name="">
                                <option value="en" selected>EN – English</option>
                                <option value="de">DE – Deutsche</option>
                                <option value="es">ES – Español</option>
                                <option value="fr">FR – Français</option>
                                <option value="mi">MI – Māori</option>
                                <option value="ru">RU – русский</option>
                                <option value="ar">AR – العربية</option>
                                <option value="zh">ZH – 中文</option>
                                <option value="ja">JA – 日本語</option>
                            </select>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </section>
