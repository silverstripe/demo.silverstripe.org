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
                                    <input type="text" name="Email" placeholder="Email address" value="admin">
                                </div>
                                <div class="form-item">
                                    <label for="">Password</label>
                                    <input type="password" name="Password" placeholder="Password" value="password">
                                </div>
                            </fieldset>
                            <button type="submit" name="button">Login</button>
                            <select name="Language">
                                <option value="admin" selected>EN – English</option>
                                <option value="german">DE – Deutsche</option>
                                <option value="spanish">ES – Español</option>
                                <option value="french">FR – Français</option>
                                <option value="tereo">MI – Māori</option>
                                <option value="russian">RU – русский</option>
                                <option value="arabic">AR – العربية</option>
                                <option value="chinese">ZH – 中文</option>
                                <option value="japanese">JA – 日本語</option>
                            </select>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </section>
